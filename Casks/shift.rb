cask "shift" do
  version "7.1.11"
  sha256 "f9412ce974fcf179d7a09c7e5b0fa68f853954e7515ec6572d3b12b82448d9ec"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
