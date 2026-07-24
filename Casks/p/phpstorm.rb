cask "phpstorm" do
  arch arm: "-aarch64"

  version "2026.2.0.1,262.8665.325"
  sha256 arm:   "7c8eb4c49f78a27997033241cb7f865079c91fefee9104c2b94da3decd59239a",
         intel: "86b3d1d3b14c455596b0b33d02e17a65a49ecf574e7e480e883af718000fcfa7"

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

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)

  command_wrapper "phpstorm.wrapper.sh",
                  target:  "phpstorm",
                  content: <<~EOS
                    #!/bin/sh
                    exec '#{appdir}/PhpStorm.app/Contents/MacOS/phpstorm' "$@"
                  EOS

  zap trash: [
    "~/Library/Application Support/JetBrains/consentOptions",
    "~/Library/Application Support/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Caches/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Logs/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.PhpStorm.plist",
    "~/Library/Preferences/jetbrains.jetprofile.asset.plist",
  ]
end
