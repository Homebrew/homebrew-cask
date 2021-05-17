cask "shift" do
  version "7.1.8"
  sha256 "f91728a1cd849c2a9f3f78bb2a5348a0adefe0fd941e1e4a4a77f26509347456"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
