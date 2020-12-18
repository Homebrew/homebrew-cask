cask "goland" do
  version "2020.3,203.5981.98"
  sha256 "bbd73cadabb7bb16b04f0a539c5a9093126c38b427615d48e8dab25ae1a32f45"

  url "https://download.jetbrains.com/go/goland-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=GO&latest=true&type=release"
  name "Goland"
  desc "Go (golang) IDE"
  homepage "https://www.jetbrains.com/go/"

  auto_updates true

  app "GoLand.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "goland") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/GoLand",
    "~/Library/Application Support/GoLand#{version.major_minor}",
    "~/Library/Caches/GoLand#{version.major_minor}",
    "~/Library/Logs/GoLand#{version.major_minor}",
    "~/Library/Preferences/GoLand#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.goland.plist",
    "~/Library/Saved Application State/com.jetbrains.goland.SavedState",
  ]
end
