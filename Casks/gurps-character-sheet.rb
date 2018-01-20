cask 'gurps-character-sheet' do
  version '4.10.0'
  sha256 'eaf10a4eb4577d876c64702bb3b70335e46b92860251cf83833a1cf244c51bc1'

  url "http://gurpscharactersheet.com/downloads/#{version}/gcs-#{version}-mac.zip"
  appcast 'https://github.com/richardwilkes/gcs/releases.atom',
          checkpoint: '94cf2a5172fd549caabd889f8e75f98064a92281f2d3cd1d658e4a47ff2320ee'
  name 'GURPS Character Sheet'
  homepage 'http://gurpscharactersheet.com/'

  app "gcs-#{version}-mac/GURPS Character Sheet.app"
end
