cask "rider" do
  version "2020.3.4,203.7717.10"
  sha256 "3454d0df7abfa3af8c3cf76c4529057b9c7c02e6ee57065e541f9f1d2497c28a"

  url "https://download.jetbrains.com/rider/JetBrains.Rider-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release"
  name "Jetbrains Rider"
  desc "Cross-Platform .NET IDE"
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
