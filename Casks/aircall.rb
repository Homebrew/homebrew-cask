cask "aircall" do
  version "2.5.10"
  sha256 "e62a5933447a2699d21c7fc26bf112a4f924146fffdd5a04320242c3e1460aee"

  # aircall-electron-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://aircall-electron-releases.s3.amazonaws.com/production/Aircall-#{version}.zip"
  appcast "https://electron.aircall.io/update/osx/0.0.0"
  name "Aircall"
  desc "Cloud-based call center and phone system software"
  homepage "https://aircall.io/"

  auto_updates true

  app "Aircall.app"
end
