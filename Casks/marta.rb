cask "marta" do
  version "0.8"
  sha256 "25ad0b66486b219ab380e55567c7b308d3811250797bd287bb721ce3e25daf07"

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
