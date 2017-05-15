cask 'standard-notes' do
  version '0.4.0'
  sha256 '718621b0883caa4768161f95ca05e902d154bf96a30610ce0a8c355dcd786715'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/standard-notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: 'ecf0295f1718917894ab5124e345f09d8ce997aa250c9d42de49523d76a8e153'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
