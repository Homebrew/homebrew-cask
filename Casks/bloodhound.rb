cask "bloodhound" do
  version "4.0.0"
  sha256 "fdfbc173fa9fe1094f92f5141b4f257cf071baf69eb62f86b3ba547196eb5a60"

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast "https://github.com/BloodHoundAD/BloodHound/releases.atom"
  name "bloodhound"
  desc "Six Degrees of Domain Admin"
  homepage "https://github.com/BloodHoundAD/BloodHound"

  app "BloodHound-darwin-x64/BloodHound.app"
end
