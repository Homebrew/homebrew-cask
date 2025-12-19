cask "phpstorm" do
  arch arm: "-aarch64"

  version "2025.3.1,253.29346.151"
  sha256 arm:   "0453e0a6ee86c3cbf97b8c48f2826751d8085bf8211b541a04752621c5af16bc",
         intel: "11988bcee5d94b271ea67aeacd3e836029595a6cfebfec2659565fc18a4ad2d1"

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
