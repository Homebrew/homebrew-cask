cask 'gurps-character-sheet' do
  version '4.10.0'
  sha256 'eaf10a4eb4577d876c64702bb3b70335e46b92860251cf83833a1cf244c51bc1'

  # github.com/richardwilkes/gcs/releases/download was verified as official when first introduced to the cask
  url "https://github.com/richardwilkes/gcs/releases/download/gcs-#{version}/gcs-#{version}-mac.zip"
  appcast 'https://github.com/richardwilkes/gcs/releases.atom',
          checkpoint: '0ecd208e6c435d965fb3fecd035d23b141b6cd323e2fef786e7925dafdda5e47'
  name 'GURPS Character Sheet'
  homepage 'http://gurpscharactersheet.com/'

  app "gcs-#{version}-mac/GURPS Character Sheet.app"
end
