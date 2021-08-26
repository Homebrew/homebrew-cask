cask "ppduck" do
  version "3.10.11"
  sha256 "294335e27a3af4ce65392fa350cd4042ca040b84d2e7de6814bdb1cb2fc647d7"

  url "https://download.ppduck.com/PPDuck#{version.major}_#{version}.dmg"
  name "PPDuck"
  homepage "https://www.ppduck.com/"

  app "PPDuck#{version.major}.app"
end
