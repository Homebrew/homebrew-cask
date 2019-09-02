cask 'bloodhound' do
  version '2.2.1'
  sha256 '795845daafefd3f3b79a5cd599e45605aed74244de4a6d17eb1ccfb3568f938e'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
