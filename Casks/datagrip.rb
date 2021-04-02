cask "datagrip" do
  version "2021.1"

  if Hardware::CPU.intel?
    sha256 "cf218fd07ec2bb9af0c7a1bb2de7ada4008c7cfcf7028bd6cb7923c828b54782"
    url "https://download.jetbrains.com/datagrip/datagrip-#{version}.dmg"
  else
    sha256 "3d25c4794beae3c48b422d78e10708ef56f155e889b7c0d6e8eaf79feb986dc4"
    url "https://download.jetbrains.com/datagrip/datagrip-#{version}-aarch64.dmg"
  end

  appcast "https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release"
  name "DataGrip"
  desc "Databases & SQL IDE"
  homepage "https://www.jetbrains.com/datagrip/"

  auto_updates true

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
