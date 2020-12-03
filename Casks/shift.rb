cask "shift" do
  version "6.0.47"
  sha256 "3ac1d9218fab93d10ab8ffaf4bb517890125b8a10c8cdbba7f21d0c57a28f1f8"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
