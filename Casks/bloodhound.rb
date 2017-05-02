cask 'bloodhound' do
  version '1.2.1'
  sha256 '63abbfb483811a004171a8680402e613ca6129c7bd152d67321e65d90b70810b'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom',
          checkpoint: 'e97ce200da16ade01d53aefca9252e16bc0370a3a554291d3d47780919c78ada'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
