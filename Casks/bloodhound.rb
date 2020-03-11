cask 'bloodhound' do
  version '3.0.3'
  sha256 '13694645a7643abaa67d282782fdb6f7e246ab06436ff22f6a4dae55c65af5df'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
