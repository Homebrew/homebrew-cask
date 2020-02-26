cask 'bloodhound' do
  version '3.0.2'
  sha256 '046f321f30d2f6bedac62cdb099784f631bab5c68621e9e94fb81fea532da3a7'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
