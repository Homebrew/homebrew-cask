cask "shift" do
  version "5.0.86"
  sha256 "f3ceca819a0bc29f4acb334e80bc9a9f564204dccfd7cdcf5c20d97c4e427d41"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
