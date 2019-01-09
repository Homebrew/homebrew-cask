cask 'bloodhound' do
  version '2.0.3.1'
  sha256 'bb57ff50e43b27f0f38affe2192c1969dfedff65ea38664b48d1ed7722a0fdee'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
