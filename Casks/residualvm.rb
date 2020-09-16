cask "residualvm" do
  version "0.3.1"
  sha256 "298b4e8277a216647e2e3a9c5f54329ca53423bc95be5e870288eacdbdf574f5"

  url "https://www.residualvm.org/downloads/release/#{version}/residualvm-#{version}-macosx-intel64.dmg"
  appcast "https://www.residualvm.org/downloads/"
  name "ResidualVM"
  homepage "https://www.residualvm.org/"

  app "ResidualVM.app"
end
