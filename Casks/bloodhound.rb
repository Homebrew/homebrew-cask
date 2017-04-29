cask 'bloodhound' do
  version '1.2.1'
  sha256 '63abbfb483811a004171a8680402e613ca6129c7bd152d67321e65d90b70810b'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom',
          checkpoint: 'f5395c0c5cf8e8826339aa4c5b9d77f085674390173ace64152c511b8c5b9189'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
