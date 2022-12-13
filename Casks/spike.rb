cask "spike" do
  version "3.2.0"
  sha256 "9a4aca2d7a8963eb4279ca5c215a828f64bb93c3983497dd18b77ae76b88a677"

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
