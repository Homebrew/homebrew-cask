cask "ecodms" do
  version "23.01"
  sha256 "1bc94d3bc28a3b17fa525d8f9c5151450606a166bbb3752f3b2c19cdc9ed9226"

  url "https://www.ecodms.de/index.php/de/component/jdownloads/?task=download.send&id=413&catid=162&m=0&Itemid=661"
  name "ecoDMS"
  desc "Document Management System"
  homepage "https://www.ecodms.de/"

  livecheck do
    url "https://www.ecodms.de/index.php/en/download/ecodms-archiv/ecodms-burns"
    # TODO: define regex pattern and strategy
  end

  auto_updates false
  depends_on macos: ">= :ventura"

  pkg "ecoDMS Clients_#{version}.pkg"

  uninstall pkgutil: "de.applord.pkg.ecodms",
            quit:    [
              "de.applord.ecoDMS-Client",
              "de.applord.ecoDMS-Connection-Manager",
            ]

  zap trash: [
    "~/Library/Preferences/com.applord-gmbh.ecoDMS - Profilemanager.plist",
    "~/Library/Preferences/com.applord-gmbh.ecodmsclient.plist",
    "~/Library/Preferences/com.applord-gmbh.ecodmsclient_*.plist",
    "~/Library/Preferences/com.ecodms-gmbh.ecodmsclientarchivesettings.plist",
    "~/Library/Preferences/de.applord.ecoDMS-Client.plist",
    "~/Library/Saved Application State/de.applord.ecoDMS-Client.savedState",
    "/private/var/folders/j3/zpp4m98n2pl8c12vbyrgcyhw0000gn/C/de.applord.ecoDMS-Client",
    "/private/var/folders/j3/zpp4m98n2pl8c12vbyrgcyhw0000gn/C/de.applord.ecoDMS-Connection-Manager",
  ]
end
