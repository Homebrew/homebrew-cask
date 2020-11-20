cask "aircall" do
  version "2.8.2"
  sha256 "9611d39fcc660057b489db74ab7bff4bedda69aa57b6805455e32e0405f6d1d9"

  # aircall-electron-releases.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://aircall-electron-releases.s3.amazonaws.com/production/Aircall-#{version}.zip"
  appcast "https://electron.aircall.io/update/osx/0.0.0"
  name "Aircall"
  desc "Cloud-based call center and phone system software"
  homepage "https://aircall.io/"

  auto_updates true

  app "Aircall.app"
end
