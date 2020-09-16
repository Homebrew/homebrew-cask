cask "cloud-pbx" do
  version "22.9.10.219"
  sha256 "dcc7005190d60f4f510cef942c014013bcbda1d76800b3b8ad0b9e8338dc7150"

  # cpbx-hilfe.deutschland-lan.de/downloads/ was verified as official when first introduced to the cask
  url "https://cpbx-hilfe.deutschland-lan.de/downloads/desktop-clients/cloud-pbx.osx-#{version}"
  appcast "https://cpbx-hilfe.deutschland-lan.de/de/direkthilfe/hilfe-downloads"
  name "Cloud PBX"
  homepage "https://geschaeftskunden.telekom.de/startseite/festnetz-internet/tarife/332198/telefonanlage-aus-der-cloud.html"

  app "Cloud PBX.app"

  zap trash: [
    "~/Library/Application Support/Telekom Deutschland GmbH",
    "~/Library/Caches/Telekom Deutschland GmbH",
    "~/Library/Preferences/com.broadsoft.communicator.plist",
    "~/Library/Saved Application State/com.broadsoft.communicator.savedState",
    "~/Library/Preferences/de.deutschland-lan.Cloud PBX.plist",
  ]
end
