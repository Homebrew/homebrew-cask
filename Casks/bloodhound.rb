cask 'bloodhound' do
  version '2.0.2'
  sha256 '6dfbe4a35f1c89c0be4f6c10d9e9ada69d75095c66dda39445f38e1522b5f1c1'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
