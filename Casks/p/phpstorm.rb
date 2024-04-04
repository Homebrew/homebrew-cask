cask "phpstorm" do
  arch arm: "-aarch64"

  version "2024.1,241.14494.237"
  sha256 arm:   "02bcb551de99cf070e90b2131b41f0b3e93aa776615bcfba1508e4c4d1bb9378",
         intel: "75699ce909f07de35a6e89745c652f08afba5096b7930fdc51683989967fcc62"

  url "https://download.jetbrains.com/webide/PhpStorm-#{version.csv.first}#{arch}.dmg"
  name "JetBrains PhpStorm"
  desc "PHP IDE by JetBrains"
  homepage "https://www.jetbrains.com/phpstorm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release"
    strategy :json do |json|
      json["PS"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "PhpStorm.app"
  binary "#{appdir}/PhpStorm.app/Contents/MacOS/phpstorm"

  zap trash: [
    "~/Library/Application Support/PhpStorm#{version.major_minor}",
    "~/Library/Caches/PhpStorm#{version.major_minor}",
    "~/Library/Logs/PhpStorm#{version.major_minor}",
    "~/Library/Preferences/jetbrains.phpstorm.*.plist",
    "~/Library/Preferences/PhpStorm#{version.major_minor}",
  ]
end
