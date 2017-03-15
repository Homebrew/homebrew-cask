cask 'standard-notes' do
  version '0.2.6'
  sha256 'a40f0fec1dd4e86ae57e16e8d3c308a419660220debfcc71100e30055048fa8c'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/standard-notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: '7421d16a0413fcea9df2df4f6089b66c4f6e3b0d429af77ab767600b804b1678'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
