cask "shift" do
  version "5.0.90"
  sha256 "d97aba0ff5ed5acb925ec1a9473801f7fdd1c289ff981a975d05671e62a79a94"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
