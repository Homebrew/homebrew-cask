cask "shift" do
  version "6.0.62"
  sha256 "c489f1214a35e0535f8b14a200d544983c8649e9582c6842ec4f250a106babcd"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
