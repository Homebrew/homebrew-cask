cask "itsycal" do
  on_catalina :or_older do
    version "0.14.1"
    sha256 "3cbd422fb43409bb2bdf5341c61d69882302dfb216a7bc50b3c08e4318e3a395"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "0.15.11"
    sha256 "b102558015958cce8ac9c4b40a492c505b96bb14f1a8c58905a64a7c1601f5a9"

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
