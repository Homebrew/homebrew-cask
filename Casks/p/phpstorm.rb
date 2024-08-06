cask "phpstorm" do
  arch arm: "-aarch64"

  version "2024.1.4,241.18034.69"
  sha256 arm:   "8e5bffb20b1606195afe6818429e99b31c56f2e8f390c81cd6d92ff3de80de68",
         intel: "ce844a947a96d819a59b35705fd1007c5193a444c3bb5d237179bfb3ceb2ed8b"

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
    "~/Library/Application Support/JetBrains/consentOptions",
    "~/Library/Application Support/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Caches/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Logs/JetBrains/PhpStorm#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.PhpStorm.plist",
    "~/Library/Preferences/jetbrains.jetprofile.asset.plist",
  ]
end
