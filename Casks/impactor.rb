cask "impactor" do
  version "0.9.55"
  sha256 "7b01500d3c75c65f453dadbae3a61632f4548a8e6376c86e5b4d249dfbf18d9a"

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
