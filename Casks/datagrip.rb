cask "datagrip" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2021.3.2,213.6461.19"

  if Hardware::CPU.intel?
    sha256 "81bcc455f002dff13488652ff7f61083983f8a393894e0f5546a8e69c926f324"
  else
    sha256 "5125b3504fcbf519db845dc0e80cd64d09f5790941cc2b679f493f69a6e0da05"
  end

  url "https://download.jetbrains.com/datagrip/datagrip-#{version.before_comma}#{arch}.dmg"
  name "DataGrip"
  desc "Databases & SQL IDE"
  homepage "https://www.jetbrains.com/datagrip/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["DG"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DataGrip.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "datagrip") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/DataGrip*",
    "~/Library/Caches/JetBrains/DataGrip*",
    "~/Library/Logs/JetBrains/DataGrip*",
    "~/Library/Saved Application State/com.jetbrains.datagrip.savedState",
  ]
end
