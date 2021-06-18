cask "shift" do
  version "7.1.9"
  sha256 "f70cf6eabda75919dfbf561e6d232b86ca07c2a47b0a6d0b44ecf12b97de3b4e"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
