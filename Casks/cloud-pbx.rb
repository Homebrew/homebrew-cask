cask "cloud-pbx" do
  version "22.9.40.135"
  sha256 "848401618c535a6eaedb1da765c1b6c25212a4bb915c4a7a3174f9167fb8636c"

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
