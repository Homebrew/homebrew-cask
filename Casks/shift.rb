cask "shift" do
  version "5.0.89"
  sha256 "de50c9a04020d7294c29c30941569e15c5a9488885d06aa82e4ea7d8700212d0"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
