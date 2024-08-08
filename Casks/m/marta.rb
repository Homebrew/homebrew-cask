cask "marta" do
  version "0.8.2"
  sha256 "960f3529c099a6e1429dbb15ab120c09ab9d76c6424133a18bdb954c4465bdb6"

  url "https://updates.marta.sh/release/Marta-#{version}.dmg"
  name "Marta File Manager"
  desc "Extensible two-pane file manager"
  homepage "https://marta.sh/"

  livecheck do
    url "https://updates.marta.sh/release/appcast.xml"
    strategy :sparkle, &:short_version
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
