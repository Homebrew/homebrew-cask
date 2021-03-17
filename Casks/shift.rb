cask "shift" do
  version "6.0.56"
  sha256 "40b5b48ffc72b9d9aedac031762311bf67e96f98d02a20308cd8946519843055"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
