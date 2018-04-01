cask 'bloodhound' do
  version '1.4'
  sha256 'b11b6028e75a3bcbe194770f9613181009aaf40bdd23892e12e0ce32bbe90cfb'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom',
          checkpoint: 'cd6df9e823b9434029f0ad50f819eb99335cbe3d2f87ac0533e92230107428e0'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
