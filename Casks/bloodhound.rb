cask "bloodhound" do
  version "4.1.1"
  sha256 "2c45a08d77284fedd8074a5664e7c2424a94c6d131540010da2e73d8f520ebe7"

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  name "bloodhound"
  desc "Six Degrees of Domain Admin"
  homepage "https://github.com/BloodHoundAD/BloodHound"

  app "BloodHound-darwin-x64/BloodHound.app"
end
