cask "phpstorm" do
  arch arm: "-aarch64"

  version "2026.2.3,262.10968.76"
  sha256 arm:   "9207ad5d1fc6e2b6fa06fb6f41b824e64596e1b16475df22f0e207a654f8df73",
         intel: "618d835e8cb3113f34124386456d41b845145366518a17993dbd69697c71b827"

  url "https://download.jetbrains.com/webide/PhpStorm-#{version.csv.first}#{arch}.dmg"
  name "JetBrains PhpStorm"
  desc "PHP IDE by JetBrains"
  homepage "https://www.jetbrains.com/phpstorm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release"
    strategy :json do |json|
      json["PS"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "PhpStorm.app"
  command_wrapper "phpstorm",
                  executable: "#{appdir}/PhpStorm.app/Contents/MacOS/phpstorm"

  uninstall quit: "com.jetbrains.PhpStorm"

  zap trash: [
    "~/Library/Application Support/JetBrains/consentOptions",
    "~/Library/Application Support/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Caches/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Logs/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.PhpStorm.plist",
    "~/Library/Preferences/jetbrains.jetprofile.asset.plist",
  ]
end
