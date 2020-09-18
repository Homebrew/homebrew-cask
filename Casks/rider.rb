cask "rider" do
  version "2020.2.3,202.7319.2"
  sha256 "43c34563ff649600a79f8de82f59fcb7aa8dd198da3e26f7ac25e4605d062edb"

  url "https://download.jetbrains.com/rider/JetBrains.Rider-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release"
  name "Jetbrains Rider"
  homepage "https://www.jetbrains.com/rider/"

  auto_updates true

  app "Rider.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "rider") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/Rider#{version.major_minor}",
    "~/Library/Caches/Rider#{version.major_minor}",
    "~/Library/Logs/Rider#{version.major_minor}",
    "~/Library/Preferences/Rider#{version.major_minor}",
    "~/Library/Preferences/jetbrains.rider.71e559ef.plist",
    "~/Library/Saved Application State/com.jetbrains.rider.savedState",
  ]
end
