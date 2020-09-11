cask "shift" do
  version "5.0.85"
  sha256 "fcf4be4572a0de5848adb7235c5c6548b84b5e6910ec3d7326b2b313a91e6390"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
