cask 'bloodhound' do
  version '3.0.1'
  sha256 '8160fe6c7c5d98cfa69d14135b925866cf7b28689017d1883ef0b060f0777e5c'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
