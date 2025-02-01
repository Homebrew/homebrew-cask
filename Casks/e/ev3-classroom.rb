cask "ev3-classroom" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "1.5.0.1"
  sha256 "2cc1ed0ec0164c5b0a806ec7ad2193251a415352b318ad66a922af10b8d88f82"

  url "https://education.lego.com/_/downloads/EV3_#{version}_Global.dmg"
  name "EV3 Classroom"
  desc "Companion app for the LEGO MINDSTORMS Education EV3 Core Set"
  homepage "https://education.lego.com/en-us/downloads/mindstorms-ev3/software"

  livecheck do
    url "https://education.lego.com/page-data/en-us/downloads/mindstorms-ev3/software/page-data.json"
    regex(/EV3[._-]v?(\d+(?:\.\d+)+)[._-]Global\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "EV3Classroom.app"

  caveats do
    requires_rosetta
  end
end
