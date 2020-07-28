cask "shift" do
  version "5.0.77"
  sha256 "86520befaae45bf8441f2d8d68b98a5023ac05d0a3dddbc3412102375d98e544"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
