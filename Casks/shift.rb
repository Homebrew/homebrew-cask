cask "shift" do
  version "6.0.61"
  sha256 "fc640811318c20f75f6799f51445460bca655491581dfd96f95dfcbe847f9a3c"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
