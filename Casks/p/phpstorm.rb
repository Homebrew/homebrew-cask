cask "phpstorm" do
  arch arm: "-aarch64"

  version "2023.3.4,233.14475.35"
  sha256 arm:   "d63c06c128d23f4e151a498750656488fb5fe49156fade8f2d18c40076a28779",
         intel: "89be8ee0a6b8bbaa96b24d3959d41145d69961e6f062449c9765643260a2e23d"

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
