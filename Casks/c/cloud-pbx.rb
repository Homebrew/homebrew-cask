cask "cloud-pbx" do
  arch arm: "arm", intel: "intel"

  version "45.10.0"
  sha256 arm:   "54ce825d81f9484e5fe7b178e77c9be004bd6dfa04eb7df4e236320b02a88abd",
         intel: "6e5447258d9c689998cd2f19a6e8c775d7dffa0124615c6bd146ea8abff18c19"

  url "https://cpbx-hilfe.deutschland-lan.de/de/direkthilfe/hilfe-downloads/desktop-clients/cloud-pbx-2.0-#{arch}_v#{version}",
      verified: "cpbx-hilfe.deutschland-lan.de/de/direkthilfe/hilfe-downloads/desktop-clients/"
  name "Cloud PBX"
  desc "Cloud-based telephone system"
  homepage "https://geschaeftskunden.telekom.de/internet-dsl/tarife/festnetz-internet-dsl/companyflex/cloud-pbx"

  livecheck do
    url "https://cpbx-hilfe.deutschland-lan.de/de/direkthilfe/hilfe-downloads/downloads"
    regex(%r{href=.*?/cloud[._-]pbx[._-]2\.0[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)}i)
  end

  app "Cloud PBX 2.0.app"

  zap trash: [
    "~/Library/Application Support/Cisco Spark",
    "~/Library/Application Support/Telekom Deutschland GmbH",
    "~/Library/Caches/Telekom Deutschland GmbH",
    "~/Library/Preferences/Cisco-Systems.Spark.plist",
    "~/Library/Preferences/com.broadsoft.communicator.plist",
    "~/Library/Preferences/de.deutschland-lan.Cloud PBX.plist",
    "~/Library/Saved Application State/Cisco-Systems.Spark.savedState",
    "~/Library/Saved Application State/com.broadsoft.communicator.savedState",
  ]
end
