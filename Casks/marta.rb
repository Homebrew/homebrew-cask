cask "marta" do
  version "0.8.1"
  sha256 "0db364bcb0b2eaad0237c6f8fbca2178ce0469a2c042f1f73b9cd6558c44ca1f"

  url "https://updates.marta.yanex.org/release/Marta-#{version}.dmg"
  name "Marta File Manager"
  homepage "https://marta.yanex.org/"

  livecheck do
    url "https://updates.marta.yanex.org/release/appcast.xml"
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
