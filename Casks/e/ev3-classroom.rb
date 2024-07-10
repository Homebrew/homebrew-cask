cask "ev3-classroom" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "1.50"
  sha256 "bc946ab51a3eec7ed82478ad18acb41726bcd08d01007b3ce004528f1eaa8f0a"

  url "https://education.lego.com/_/downloads/EV3_#{version}_Global.dmg"
  name "EV3 Classroom"
  desc "Companion app for the LEGO MINDSTORMS Education EV3 Core Set"
  homepage "https://education.lego.com/en-us/downloads/mindstorms-ev3/software"

  livecheck do
    url "https://education.lego.com/page-data/en-us/downloads/mindstorms-ev3/software/page-data.json"
    regex(/EV3[._-]v?(\d+(?:\.\d+)+)[._-]Global\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "EV3 Classroom.app"

  caveats do
    requires_rosetta
  end
end
