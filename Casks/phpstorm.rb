cask "phpstorm" do
  version "2020.3.3"

  if Hardware::CPU.intel?
    sha256 "3c72eea3d7da78e9183d7f3e64de69bb577aeaabb0e595044837517545d5e1a4"
    url "https://download.jetbrains.com/webide/PhpStorm-#{version}.dmg"
  else
    sha256 "b1be4b4dfc7362f47ecc88ab3916b9515960e72fa59c411c25b1186abf2f8b96"
    url "https://download.jetbrains.com/webide/PhpStorm-#{version}-aarch64.dmg"
  end

  appcast "https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release"
  name "JetBrains PhpStorm"
  desc "PHP IDE by JetBrains"
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
