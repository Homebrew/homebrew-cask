cask "marta" do
  version "0.8.1"
  sha256 "0db364bcb0b2eaad0237c6f8fbca2178ce0469a2c042f1f73b9cd6558c44ca1f"

  url "https://updates.marta.sh/release/Marta-#{version}.dmg"
  name "Marta File Manager"
  desc "Extensible two-pane file manager"
  homepage "https://marta.sh/"

  livecheck do
    url "https://updates.marta.sh/release/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Marta.app"

  zap trash: [
    "~/Library/Application Support/org.yanex.marta",
    "~/Library/Caches/org.yanex.marta",
    "~/Library/Preferences/org.yanex.marta.plist",
    "~/Library/Saved Application State/org.yanex.marta.savedState",
  ]
end
