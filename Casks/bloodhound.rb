cask "bloodhound" do
  version "4.0.1"
  sha256 "ae2f9496b86befa082d8d2c4b714c1ace7399401356e1d9502b3a498d92f2bbc"

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  name "bloodhound"
  desc "Six Degrees of Domain Admin"
  homepage "https://github.com/BloodHoundAD/BloodHound"

  livecheck do
    url :url
    strategy :git
  end

  app "BloodHound-darwin-x64/BloodHound.app"
end
