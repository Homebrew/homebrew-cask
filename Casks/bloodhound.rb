cask 'bloodhound' do
  version '1.3'
  sha256 'e37d31e8aff8ec3346506eff360a46cb940515b973583bce0be947da399463ed'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom',
          checkpoint: '6035c75ebf01f4cc2273427470e2e950ba67913798d4123afb67a522c59c1443'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
