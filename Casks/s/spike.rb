cask "spike" do
  version "3.5.1"
  sha256 "af4438fddca0862507743446fbd487298effd8afd49a708aed53877919d367fc"

  url "https://education.lego.com/_/downloads/SPIKE_APP_#{version.major}_macOS__#{version}_Global.dmg"
  name "Lego SPIKE"
  desc "Develop with Scratch and Python for your LEGO Spike set"
  homepage "https://education.lego.com/"

  livecheck do
    url "https://education.lego.com/page-data/en-au/downloads/spike-app/software/page-data.json"
    regex(/SPIKE[._-]APP[._-]\d+[._-]macOS[._-]+v?(\d+(?:\.\d+)+)[._-]Global\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Spike.app"

  zap trash: [
    "~/Library/Application Scripts/com.lego.education.spikenext",
    "~/Library/Containers/com.lego.education.spikenext",
  ]
end
