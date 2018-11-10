cask 'profilecreator' do
  version '0.2.3'
  sha256 '8a0b9a0b219d5b4047c0e1ce8c4af25e1286060e743ed3dcd51154aaf709b9ec'

  url 'https://github.com/erikberglund/ProfileCreator/releases/download/v0.2.3-beta.8/ProfileCreator_v0.2.3-beta.8.dmg'
  appcast 'https://github.com/erikberglund/ProfileCreator/releases.atom'
  name 'ProfileCreator'
  homepage 'https://github.com/erikberglund/ProfileCreator'

  app 'ProfileCreator.app'
end
