cask "shift" do
  version "6.0.49"
  sha256 "80256e1bcda187bdc1f562299a1c93d490dfa514fafd8af66637b03c23982b5e"

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast "https://tryshift.com/download/?platform=mac"
  name "Shift"
  desc "Workstation to streamline your accounts, apps, and workflows"
  homepage "https://tryshift.com/"

  app "Shift.app"
end
