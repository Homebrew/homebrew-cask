cask "aircall" do
  version "2.9.0"
  sha256 "f91cfc506e75a403306f4a36b95e8da3a88c1ed849145fbc2ce68b14f5690015"

  url "https://aircall-electron-releases.s3.amazonaws.com/production/Aircall-#{version}.zip",
      verified: "aircall-electron-releases.s3.amazonaws.com/"
  appcast "https://electron.aircall.io/update/osx/0.0.0"
  name "Aircall"
  desc "Cloud-based call center and phone system software"
  homepage "https://aircall.io/"

  auto_updates true

  app "Aircall.app"
end
