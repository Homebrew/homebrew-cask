cask "bloodhound" do
  version "4.0.3"
  sha256 "d0aa252c1cf8232ad1fe5c59ac94962ba6d0790c333a960d3c757fb9a18f98d8"

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  name "bloodhound"
  desc "Six Degrees of Domain Admin"
  homepage "https://github.com/BloodHoundAD/BloodHound"

  app "BloodHound-darwin-x64/BloodHound.app"
end
