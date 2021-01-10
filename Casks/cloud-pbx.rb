cask "cloud-pbx" do
  version "22.9.16.137"
  sha256 "9f82127c2cc31be35032f37c7e9b6835524aff1f3133d38aa16f1d921c99eb68"

  url "https://cpbx-hilfe.deutschland-lan.de/downloads/desktop-clients/cloud-pbx.osx-#{version}",
      verified: "cpbx-hilfe.deutschland-lan.de/downloads/"
  name "Cloud PBX"
  homepage "https://geschaeftskunden.telekom.de/startseite/festnetz-internet/tarife/332198/telefonanlage-aus-der-cloud.html"

  livecheck do
    url "https://cpbx-hilfe.deutschland-lan.de/de/direkthilfe/hilfe-downloads"
    strategy :page_match
    regex(%r{href=.*?/cloud-pbx\.osx-(\d+(?:\.\d+)*)}i)
  end

  app "Cloud PBX.app"

  zap trash: [
    "~/Library/Application Support/Telekom Deutschland GmbH",
    "~/Library/Caches/Telekom Deutschland GmbH",
    "~/Library/Preferences/com.broadsoft.communicator.plist",
    "~/Library/Saved Application State/com.broadsoft.communicator.savedState",
    "~/Library/Preferences/de.deutschland-lan.Cloud PBX.plist",
  ]
end
