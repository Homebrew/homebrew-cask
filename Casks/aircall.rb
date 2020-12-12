cask "aircall" do
  version "2.8.4"
  sha256 "1678830f90a1381ddbf1a7cf6cdb6f1c3563a21188a4b08466b7113aa5541eaf"

  url "https://aircall-electron-releases.s3.amazonaws.com/production/Aircall-#{version}.zip",
      verified: "aircall-electron-releases.s3.amazonaws.com/"
  appcast "https://electron.aircall.io/update/osx/0.0.0"
  name "Aircall"
  desc "Cloud-based call center and phone system software"
  homepage "https://aircall.io/"

  auto_updates true

  app "Aircall.app"
end
