cask "dataspell" do
  arch arm: "-aarch64"

  version "2023.3.3,233.14015.111"
  sha256 arm:   "db05a2acc6a5a15b1bca9e8f68b96f975d8860df35b1bd37c0d5803af4080ee0",
         intel: "fb302153ce044e8b6bb4df5935e25d4464bffe690bd2b94ef2d60b18299ec8b2"

  url "https://download.jetbrains.com/python/dataspell-#{version.csv.first}#{arch}.dmg"
  name "DataSpell"
  desc "IDE for Professional Data Scientists"
  homepage "https://www.jetbrains.com/dataspell/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=DS&latest=true&type=release"
    strategy :json do |json|
      json["DS"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "DataSpell.app"
  binary "#{appdir}/DataSpell.app/Contents/MacOS/dataspell"

  zap trash: [
    "~/Library/Application Support/DataSpell*",
    "~/Library/Application Support/JetBrains/DataSpell*",
    "~/Library/Caches/JetBrains/DataSpell*",
    "~/Library/Logs/JetBrains/DataSpell*",
    "~/Library/Preferences/com.jetbrains.dataspell.plist",
    "~/Library/Preferences/DataSpell*",
    "~/Library/Preferences/jetbrains.dataspell.*.plist",
    "~/Library/Saved Application State/com.jetbrains.dataspell.savedState",
  ]
end
