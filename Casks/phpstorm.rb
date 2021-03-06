cask "phpstorm" do
  version "2020.3.2"

  if Hardware::CPU.intel?
    sha256 "06ac3f4b3ad81e10750e501872332e1ef0d36eee24da92b2b9c7dc4130138d79"
    url "https://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  else
    sha256 "b1be4b4dfc7362f47ecc88ab3916b9515960e72fa59c411c25b1186abf2f8b96"
    url "https://download.jetbrains.com/webide/PhpStorm-#{version}-aarch64.dmg"
  end

  appcast "https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release"
  name "JetBrains PhpStorm"
  homepage "https://www.jetbrains.com/phpstorm/"
  desc "The PHP IDE by JetBrains"

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
