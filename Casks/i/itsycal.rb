cask "itsycal" do
  version "0.27.3"
  sha256 "4b13c059298c8c7744557eb8389a64b31be1fac6221b807574fb15c15d64f30b"

  url "https://itsycal.s3.amazonaws.com/Itsycal-#{version}.zip"
  name "Itsycal"
  desc "Menu bar calendar"
  homepage "https://www.mowglii.com/itsycal/"

  livecheck do
    url "https://itsycal.s3.amazonaws.com/itsycal.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "Itsycal.app"

  uninstall quit: "com.mowglii.ItsycalApp"

  zap trash: [
    "~/Library/Application Support/com.mowglii.ItsycalApp",
    "~/Library/HTTPStorages/com.mowglii.ItsycalApp",
    "~/Library/Preferences/com.mowglii.ItsycalApp.plist",
  ]
end
