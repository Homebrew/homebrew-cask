cask "shift" do
  version "5.0.89"
  sha256 "2348d8a11e763c12e059e810e26e4a6df88c342b9164a508f57b5ca58c1520fe"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
