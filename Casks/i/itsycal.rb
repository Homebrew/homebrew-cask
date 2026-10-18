cask "itsycal" do
  on_tahoe :or_older do
    version "0.15.15"
    sha256 "35116fb8a6afe79ca6177554774be9a4c961f1bf47371c7a8f0f39a8b0c7d331"

    livecheck do
      skip "Legacy version"
    end
  end
  on_golden_gate :or_newer do
    version "0.27.3"
    sha256 "4b13c059298c8c7744557eb8389a64b31be1fac6221b807574fb15c15d64f30b"

    livecheck do
      url "https://itsycal.s3.amazonaws.com/itsycal.xml"
      strategy :sparkle, &:short_version
    end
  end

  url "https://itsycal.s3.amazonaws.com/Itsycal-#{version}.zip"
  name "Itsycal"
  desc "Menu bar calendar"
  homepage "https://www.mowglii.com/itsycal/"

  auto_updates true
  depends_on :macos

  app "Itsycal.app"

  uninstall quit: "com.mowglii.ItsycalApp"

  zap trash: [
    "~/Library/Application Support/com.mowglii.ItsycalApp",
    "~/Library/HTTPStorages/com.mowglii.ItsycalApp",
    "~/Library/Preferences/com.mowglii.ItsycalApp.plist",
  ]
end
