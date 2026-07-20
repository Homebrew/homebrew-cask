cask "phpstorm" do
  arch arm: "-aarch64"

  version "2026.2,262.8665.265"
  sha256 arm:   "04f272167f57723ddfc95c02220ab9c3abb92aa0d39ac1ee9bacfa0c05e59c5d",
         intel: "6dd1dfe5013c4055dbed1ad7c21a2012bde44581bf4ba42edbcbf263e0386248"

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
