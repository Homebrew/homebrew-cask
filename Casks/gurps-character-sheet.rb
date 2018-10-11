cask 'gurps-character-sheet' do
  version '4.11.1'
  sha256 '40d6801557ac10e3465a00aeefc76a38e2937b92b3a4efbbcbffb6a0fc9eff93'

  # github.com/richardwilkes/gcs was verified as official when first introduced to the cask
  url "https://github.com/richardwilkes/gcs/releases/download/gcs-#{version}/GURPS.Character.Sheet.#{version}.dmg"
  appcast 'https://github.com/richardwilkes/gcs/releases.atom'
  name 'GURPS Character Sheet'
  homepage 'http://gurpscharactersheet.com/'

  suite 'GURPS Character Sheet'
end
