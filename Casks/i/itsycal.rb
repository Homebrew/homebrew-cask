cask "itsycal" do
  on_catalina :or_older do
    on_el_capitan :or_older do
      version "0.10.16"
      sha256 "dbf1b104c7a3a2ca3ead9879145cb0557955c29d53f35a92b42f48e68122957c"
    end
    on_sierra do
      version "0.11.17"
      sha256 "fda1ba5611deaf4d5b834118b3af37ea9c5d08d1f8c813d04e7dd0552a270e11"
    end
    on_high_sierra do
      version "0.11.17"
      sha256 "fda1ba5611deaf4d5b834118b3af37ea9c5d08d1f8c813d04e7dd0552a270e11"
    end
    on_mojave do
      version "0.14.1"
      sha256 "3cbd422fb43409bb2bdf5341c61d69882302dfb216a7bc50b3c08e4318e3a395"
    end
    on_catalina do
      version "0.14.1"
      sha256 "3cbd422fb43409bb2bdf5341c61d69882302dfb216a7bc50b3c08e4318e3a395"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "0.15.6"
    sha256 "dc5b99a601796304a5386190c6ff6998057c59fcdabd3d5bb04b4b561d029484"

    livecheck do
      url "https://itsycal.s3.amazonaws.com/itsycal.xml"
      strategy :sparkle, &:short_version
    end
  end

  url "https://itsycal.s3.amazonaws.com/Itsycal-#{version}.zip",
      verified: "itsycal.s3.amazonaws.com/"
  name "Itsycal"
  desc "Menu bar calendar"
  homepage "https://www.mowglii.com/itsycal/"

  auto_updates true

  app "Itsycal.app"

  uninstall quit: "com.mowglii.ItsycalApp"

  zap trash: [
    "~/Library/HTTPStorages/com.mowglii.ItsycalApp",
    "~/Library/Preferences/com.mowglii.ItsycalApp.plist",
  ]
end
