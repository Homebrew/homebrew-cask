cask "phpstorm" do
  arch arm: "-aarch64"

  version "2026.2.4,262.11879.104"
  sha256 arm:   "20b5d42d561dfe90d3190e25326f8d0ceafb683765b8ae1c7176cd8961aa77b7",
         intel: "eac738d901c498cfd635b7d32ae9c4185c071202a6ba21cba3c83a0c1f4c9a25"

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
