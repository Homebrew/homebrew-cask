cask "phpstorm" do
  version "2020.2.4,202.8194.11"
  sha256 "1052c073fa0da3490912c537a447068b883dece786e23ba9bb7e62fb4fdafe51"

  url "https://download.jetbrains.com/webide/PhpStorm-#{version.before_comma}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release"
  name "JetBrains PhpStorm"
  homepage "https://www.jetbrains.com/phpstorm/"

  auto_updates true

  app "PhpStorm.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "pstorm") }.each do |path|
      if File.exist?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/PhpStorm#{version.major_minor}",
    "~/Library/Caches/PhpStorm#{version.major_minor}",
    "~/Library/Logs/PhpStorm#{version.major_minor}",
    "~/Library/Preferences/PhpStorm#{version.major_minor}",
    "~/Library/Preferences/jetbrains.phpstorm.*.plist",
  ]
end
