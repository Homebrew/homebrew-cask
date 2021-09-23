cask "datagrip" do
  version "2021.2.2,212.5284.17"

  if Hardware::CPU.intel?
    sha256 "1843ebd4223eae84b94f06dc93f677c90f8f473e4336303ffa06820228a170f5"

    url "https://download.jetbrains.com/datagrip/datagrip-#{version.before_comma}.dmg"
  else
    sha256 "a762e81050ae28519877314039eb474eeada160fd1a55cf3ca1d6843a077f0dd"

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
