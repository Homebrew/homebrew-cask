cask "spike" do
  version "3.2.2"
  sha256 "ba005795cf2833ddd1efc7922b9642a0f1b7e74c6bdceaaf4039fe502f755342"

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
