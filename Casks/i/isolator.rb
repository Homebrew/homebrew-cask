cask "isolator" do
  version "4.99beta"
  sha256 "8ab9344efd503606c88dbd5a139e932f37d25ec9b8d7c574a6af9f6cf1d9bcaf"

  url "https://www.willmore.eu/software/download/Isolator-#{version}.dmg"
  name "Isolator"
  desc "Menu bar app that hides desktop, inactive windows, etc."
  homepage "https://www.willmore.eu/software/isolator/"

  livecheck do
    url "https://www.willmore.eu/software/isolator/allversions.xml"
    strategy :sparkle
  end

  app "Isolator.app"
end
