cask "shift" do
  version "6.0.48"
  sha256 "071b7c60107c6e6f3d670450fe34b9b8d7ff340db83623732b9567e435348cc9"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
