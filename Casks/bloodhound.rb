cask 'bloodhound' do
  version '2.1.0'
  sha256 '2e18f54ffc6007a57706d500ea0159baed76eeec31c1a0a2ee2e5ce24b79acc6'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
