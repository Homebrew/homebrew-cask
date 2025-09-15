cask "itsycal" do
  on_catalina :or_older do
    version "0.14.1"
    sha256 "3cbd422fb43409bb2bdf5341c61d69882302dfb216a7bc50b3c08e4318e3a395"

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
