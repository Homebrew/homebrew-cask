cask "impactor" do
  version "0.9.54"
  sha256 "39dbe6cf9f6f5f457a2d0e79b8df2e3a197822492c7d8201cf5247819cb3b6a1"

  url "https://cache.saurik.com/impactor/mac/Impactor_#{version}.dmg",
      verified: "cache.saurik.com/impactor/"
  appcast "https://cydia.saurik.com/api/appcast/1"
  name "Impactor"
  desc "GUI tool for working with mobile devices"
  homepage "http://www.cydiaimpactor.com/"

  app "Impactor.app"

  zap trash: [
    "~/Library/Application Support/Impactor",
    "~/Library/Caches/com.saurik.Impactor",
    "~/Library/Cookies/com.saurik.Impactor.binarycookies",
    "~/Library/Preferences/com.saurik.Impactor.plist",
    "~/Library/Saved Application State/com.saurik.Impactor.savedState",
  ]
end
