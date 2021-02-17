cask "bloodhound" do
  version "4.0.2"
  sha256 "92f93bcce51a5c4362dc6304cf01838f47bb274737bfd81e64e4aeb9c4eda895"

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast "https://github.com/BloodHoundAD/BloodHound/releases.atom"
  name "bloodhound"
  desc "Six Degrees of Domain Admin"
  homepage "https://github.com/BloodHoundAD/BloodHound"

  app "BloodHound-darwin-x64/BloodHound.app"
end
