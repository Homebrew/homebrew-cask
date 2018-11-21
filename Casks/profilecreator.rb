cask 'profilecreator' do
  version '0.2.3-beta.8'
  sha256 '8a0b9a0b219d5b4047c0e1ce8c4af25e1286060e743ed3dcd51154aaf709b9ec'

  url "https://github.com/erikberglund/ProfileCreator/releases/download/v#{version}/ProfileCreator_v#{version}.dmg"
  appcast 'https://github.com/erikberglund/ProfileCreator/releases.atom'
  name 'ProfileCreator'
  homepage 'https://github.com/erikberglund/ProfileCreator'

  depends_on macos: '>= :sierra'

  app 'ProfileCreator.app'
end
