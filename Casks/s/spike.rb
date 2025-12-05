cask "spike" do
  version "3.6.0"
  sha256 "04a502d8d4fcb04bbd450f4ec8b56c9ccc627b9243abe4c6abcfe6b96dd66e82"

  url "https://education.lego.com/_/downloads/SPIKE_APP_#{version.major}_macOS__#{version}_Global.dmg"
  name "Lego SPIKE"
  desc "Develop with Scratch and Python for your LEGO Spike set"
  homepage "https://education.lego.com/"

  livecheck do
    url "https://education.lego.com/page-data/en-au/downloads/spike-app/software/page-data.json"
    regex(/SPIKE[._-]APP[._-]\d+[._-]macOS[._-]+v?(\d+(?:\.\d+)+)[._-]Global\.dmg/i)
  end

  app "Spike.app"

  zap trash: [
    "~/Library/Application Scripts/com.lego.education.spikenext",
    "~/Library/Containers/com.lego.education.spikenext",
  ]
end
