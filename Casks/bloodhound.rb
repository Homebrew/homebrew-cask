cask 'bloodhound' do
  version '1.2.1'
  sha256 'dadf9b6c692693c628e8b51cf7d0657b14ef2e669daede5ceb6144484edc0f5e'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom',
          checkpoint: '2356a4e6a8274454e11cd014ce98cf9ef4365ce3348f1b7c16f7b39258e4cbc2'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
