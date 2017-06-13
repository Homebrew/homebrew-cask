cask 'bloodhound' do
  version '1.3'
  sha256 'e37d31e8aff8ec3346506eff360a46cb940515b973583bce0be947da399463ed'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom',
          checkpoint: 'aca2b5e8b0a571fa30358b8a7cc82a05cdc317af02bd647ae5abdb9f008ab905'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
