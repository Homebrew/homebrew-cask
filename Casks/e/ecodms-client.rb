cask "ecodms-client" do
  version "23.02"
  sha256 :no_check

  url "https://www.ecodms.de/index.php/de/component/jdownloads/?task=download.send&id=413&catid=162&m=0&Itemid=661"
  name "ecoDMS Client"
  desc "Document Management System"
  homepage "https://www.ecodms.de/"

  livecheck do
    url :url
    strategy :header_match
  end

  depends_on macos: ">= :ventura"

  pkg "ecoDMS-Clients_#{version}.pkg"

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
  ]
end
