cask "isolator" do
  version "4.99beta"
  sha256 "8ab9344efd503606c88dbd5a139e932f37d25ec9b8d7c574a6af9f6cf1d9bcaf"

  url "https://willmore.eu/software/download/Isolator-#{version}.dmg"
  appcast "https://willmore.eu/software/isolator/allversions.xml"
  name "Isolator"
  homepage "https://www.willmore.eu/software/isolator/"

  app "Isolator.app"
end
