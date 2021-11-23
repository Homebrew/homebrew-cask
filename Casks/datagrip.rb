cask "datagrip" do
  version "2021.2.4,212.5457.41"

  if Hardware::CPU.intel?
    sha256 "0062c8ba1ea8cdec91f3ad5d909f79e2275a619cc2e0f246e1bf1b8c34e0b27d"

    url "https://download.jetbrains.com/datagrip/datagrip-#{version.before_comma}.dmg"
  else
    sha256 "ce8a19860fd71b91bd6e64fcf0e95995f1e0a14aa46e33bfaf6182351f92a933"

    url "https://download.jetbrains.com/datagrip/datagrip-#{version.before_comma}-aarch64.dmg"
  end

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
    "~/Library/Application Support/JetBrains/DataGrip#{version.major_minor}",
    "~/Library/Caches/JetBrains/DataGrip#{version.major_minor}",
    "~/Library/Logs/JetBrains/DataGrip#{version.major_minor}",
    "~/Library/Saved Application State/com.jetbrains.datagrip.savedState",
  ]
end
