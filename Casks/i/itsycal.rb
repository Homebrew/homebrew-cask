cask "itsycal" do
  version "0.15.14"
  sha256 "c66dc8a76dfb9d13396fc7bc3f5b18a41d8710840fb091aa849af747439bc949"

  url "https://itsycal.s3.amazonaws.com/Itsycal-#{version}.zip"
  name "Itsycal"
  desc "Menu bar calendar"
  homepage "https://www.mowglii.com/itsycal/"

  livecheck do
    url "https://itsycal.s3.amazonaws.com/itsycal.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "Itsycal.app"

  uninstall quit: "com.mowglii.ItsycalApp"

  zap trash: [
    "~/Library/HTTPStorages/com.mowglii.ItsycalApp",
    "~/Library/Preferences/com.mowglii.ItsycalApp.plist",
  ]
end
