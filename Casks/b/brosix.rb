cask "brosix" do
  version "5.2.1"
  sha256 :no_check

  url "https://downloads.brosix.com/builds/official/Brosix.pkg"
  name "Brosix"
  desc "Secure instant messaging and collaboration client for teams"
  homepage "https://www.brosix.com/download/"

  livecheck do
    url "https://www.brosix.com/download/"
    regex(/version="mac">(\d+(?:\.\d+)+)/i)
    strategy :page_match
  end

  depends_on macos: :big_sur

  pkg "Brosix.pkg"

  uninstall pkgutil: "org.Brosix.5.2.4"

  zap trash: [
    "~/Library/Caches/com.brosix.mac",
    "~/Library/HTTPStorages/com.brosix.mac",
    "~/Library/Preferences/com.brosix.mac.plist",
    "~/Library/Saved Application State/com.brosix.mac.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
