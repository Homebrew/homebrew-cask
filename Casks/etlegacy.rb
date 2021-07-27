cask "etlegacy" do
  version "2.77.1"
  sha256 :no_check

  url "https://www.etlegacy.com/download/file/258"
  name "ET: Legacy"
  desc "Open source project based on the code of Wolfenstein: Enemy Territory"
  homepage "https://www.etlegacy.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"
  depends_on formula: "wget"

  suite "ETLegacy"
  installer script: {
    executable: "wget",
    args:       ["https://mirror.etlegacy.com/etmain/pak0.pk3", "-P", "#{caskroom_path}/#{version}/ETLegacy/etmain", "https://mirror.etlegacy.com/etmain/pak1.pk3", "-P", "#{caskroom_path}/#{version}/ETLegacy/etmain", "https://mirror.etlegacy.com/etmain/pak2.pk3", "-P", "#{caskroom_path}/#{version}/ETLegacy/etmain"],
  }

  uninstall delete: [
    "~/Library/Application Support/etlegacy",
    "~/Library/Saved Application State/com.etlegacy.etl.savedState",
  ]
end
