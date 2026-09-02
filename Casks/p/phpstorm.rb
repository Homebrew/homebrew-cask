cask "phpstorm" do
  arch arm: "-aarch64"

  version "2026.2.1,262.9437.196"
  sha256 arm:   "6986b320cee2da75075b3a99dd8fea79e8eee843e1f1f7652012949a21e56111",
         intel: "bea5eab6401486fd3ec8469d26af2e86e9c165b9793d874cb258dbe94d032b4a"

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

  zap trash: [
    "~/Library/Application Support/JetBrains/consentOptions",
    "~/Library/Application Support/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Caches/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Logs/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.PhpStorm.plist",
    "~/Library/Preferences/jetbrains.jetprofile.asset.plist",
  ]
end
