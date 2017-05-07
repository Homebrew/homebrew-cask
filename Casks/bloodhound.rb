cask 'bloodhound' do
  version '1.2.1'
  sha256 '63abbfb483811a004171a8680402e613ca6129c7bd152d67321e65d90b70810b'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom',
          checkpoint: '749e5b7e02f7d60577b62273d982e44d6188288f0354ad2d7dd3bb0f3406f76f'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
