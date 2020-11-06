cask "publish-or-perish" do
  version "7.27.2949.7581"
  sha256 "8a7ddbec2aedc54f930f73408b1d5b9b276188a34576441032a6a2b32a54525b"

  url "https://harzing.com/download/PoP7Mac.pkg"
  appcast "https://harzing.com/download/pop7mac.txt"
  name "Harzing Publish or Perish"
  homepage "https://harzing.com/resources/publish-or-perish"

  depends_on macos: ">= :high_sierra"

  pkg "PoP7Mac.pkg"

  uninstall pkgutil: "com.tarma.popmac.pkg"

  zap trash: [
    "~/Library/Application Support/Publish or Perish",
    "~/Library/Preferences/Publish or Perish.json",
    "~/Library/Preferences/com.tarma.popmac.plist",
  ]
end
