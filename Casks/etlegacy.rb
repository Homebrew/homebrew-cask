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

  suite "ETLegacy"
  installer script: {
    executable: "curl",
    args:       ["https://mirror.etlegacy.com/etmain/pak0.pk3", "-o", "#{caskroom_path}/#{version}/ETLegacy/etmain/pak0.pk3"],
  }

  uninstall delete: [
    "~/Library/Application Support/etlegacy",
    "~/Library/Saved Application State/com.etlegacy.etl.savedState",
  ]
end
