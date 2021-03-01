cask "publish-or-perish" do
  version "7.28.3033.7654,2020.12.14.1151"
  sha256 :no_check

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
