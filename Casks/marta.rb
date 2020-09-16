cask "marta" do
  version "0.7.1"
  sha256 "023535ab4fd40be5f3abb243dc7294b0e9e59ced992892ecd6ac2888dc37a2fa"

  url "https://updates.marta.yanex.org/release/Marta-#{version}.dmg"
  appcast "https://updates.marta.yanex.org/release/appcast.xml"
  name "Marta File Manager"
  homepage "https://marta.yanex.org/"

  depends_on macos: ">= :high_sierra"

  app "Marta.app"

  zap trash: [
    "~/Library/Application Support/org.yanex.marta",
    "~/Library/Caches/org.yanex.marta",
    "~/Library/Preferences/org.yanex.marta.plist",
    "~/Library/Saved Application State/org.yanex.marta.savedState",
  ]
end
