cask "rider" do
  version "2021.1.2"
  sha256 "06f574683a23b0ace0906bd7840fc491580d9b639e158cea7b55ceef6bf635e3"

  url "https://download.jetbrains.com/rider/JetBrains.Rider-#{version.before_comma}.dmg"
  name "Jetbrains Rider"
  desc "Cross-platform .NET IDE"
  homepage "https://www.jetbrains.com/rider/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release"
    strategy :page_match
    regex(/JetBrains\.Rider-(\d+(?:\.\d+)*)\.dmg/i)
  end

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
