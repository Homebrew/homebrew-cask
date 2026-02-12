cask "cloud-pbx" do
  arch arm: "arm", intel: "intel"

  version "46.1"
  sha256 arm:   "9487af7e69f8c5ee95d157b58617a7b77043ec9885b4cc34c0d768a63877b6a2",
         intel: "c36de00c7e6f32aa7575985caf3e1862427ddacaf5095a0b41fdaf5681d3f487"

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
