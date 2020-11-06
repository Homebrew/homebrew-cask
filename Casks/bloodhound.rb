cask "bloodhound" do
  version "3.0.5"
  sha256 "2f29ef1160800ac8190ccf6ab09e546fc35a2aaa66b70393a9256a765d46fb46"

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast "https://github.com/BloodHoundAD/BloodHound/releases.atom"
  name "bloodhound"
  desc "Six Degrees of Domain Admin"
  homepage "https://github.com/BloodHoundAD/BloodHound"

  app "BloodHound-darwin-x64/BloodHound.app"
end
