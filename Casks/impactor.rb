cask "impactor" do
  version "0.9.56"
  sha256 "e73c88bb617462fb997821d2db7e7c50936af59bc790523805eeed6517249841"

  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg",
      verified: "cache.saurik.com/impactor/"
  name "Impactor"
  desc "GUI tool for working with mobile devices"
  homepage "http://www.cydiaimpactor.com/"

  livecheck do
    url "https://cydia.saurik.com/api/latest/1"
    strategy :header_match
  end

  app "Impactor.app"

  zap trash: [
    "~/Library/Application Support/Impactor",
    "~/Library/Caches/com.saurik.Impactor",
    "~/Library/Cookies/com.saurik.Impactor.binarycookies",
    "~/Library/Preferences/com.saurik.Impactor.plist",
    "~/Library/Saved Application State/com.saurik.Impactor.savedState",
  ]
end
