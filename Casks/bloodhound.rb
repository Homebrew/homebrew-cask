cask 'bloodhound' do
  version '2.0'
  sha256 'fa2061026851e6e86d3fec6347eebf2e4fb11284c6e36c3a2b018dcf5e762447'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
