cask "phpstorm" do
  arch arm: "-aarch64"

  version "2025.3.3,253.31033.138"
  sha256 arm:   "bc86ce761dace85c78e1958194bf8ed422a8b4c55661190e2aa57614d68467ed",
         intel: "3e01ee735ddf54e05c7cae723cae05af4a5695841dda09964d88c22a323579b1"

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

  app "PhpStorm.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/phpstorm.wrapper.sh"
  binary shimscript, target: "phpstorm"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/PhpStorm.app/Contents/MacOS/phpstorm' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/consentOptions",
    "~/Library/Application Support/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Caches/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Logs/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.PhpStorm.plist",
    "~/Library/Preferences/jetbrains.jetprofile.asset.plist",
  ]
end
