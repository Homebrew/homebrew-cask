cask "bloodhound" do
  version "4.1.0"
  sha256 "88e73ed9922003522ffe4b79167dc818716adc62dc6c739f6c7422ae209bd233"

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  name "bloodhound"
  desc "Six Degrees of Domain Admin"
  homepage "https://github.com/BloodHoundAD/BloodHound"

  app "BloodHound-darwin-x64/BloodHound.app"
end
