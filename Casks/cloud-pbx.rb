cask "cloud-pbx" do
  version "22.9.20.159"
  sha256 "f06e282210ca2a49226f1d4e4e6ad8ef407bb53e5beec401b478ab1cebfbcf00"

  url "https://cpbx-hilfe.deutschland-lan.de/downloads/desktop-clients/cloud-pbx.osx-#{version}",
      verified: "cpbx-hilfe.deutschland-lan.de/downloads/desktop-clients/"
  name "Cloud PBX"
  desc "Cloud-based telephone system"
  homepage "https://geschaeftskunden.telekom.de/internet-dsl/tarife/festnetz-internet-dsl/companyflex/cloud-pbx"

  livecheck do
    url "https://cpbx-hilfe.deutschland-lan.de/de/direkthilfe/hilfe-downloads/downloads"
    regex(%r{href=.*?/cloud[._-]pbx\.osx[._-]v?(\d+(?:\.\d+)+)}i)
  end

  app "Cloud PBX.app"

  zap trash: [
    "~/Library/Application Support/Telekom Deutschland GmbH",
    "~/Library/Caches/Telekom Deutschland GmbH",
    "~/Library/Preferences/com.broadsoft.communicator.plist",
    "~/Library/Preferences/de.deutschland-lan.Cloud PBX.plist",
    "~/Library/Saved Application State/com.broadsoft.communicator.savedState",
  ]
end
