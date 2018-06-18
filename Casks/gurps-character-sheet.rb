cask 'gurps-character-sheet' do
  version '4.11.0,4.11'
  sha256 '71b2fe6a697ba0d7fe5fe16bdf0dfe1975f9fe7d6fb68d775e5d857e7c5fb5cd'

  # github.com/richardwilkes/gcs/releases/download was verified as official when first introduced to the cask
  url "https://github.com/richardwilkes/gcs/releases/download/gcs-#{version.before_comma}/GURPS.Character.Sheet.#{version.after_comma}.dmg"
  appcast 'https://github.com/richardwilkes/gcs/releases.atom'
  name 'GURPS Character Sheet'
  homepage 'http://gurpscharactersheet.com/'

  app "gcs-#{version}-mac/GURPS Character Sheet.app"
end
