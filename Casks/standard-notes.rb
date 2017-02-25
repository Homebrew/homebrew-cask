cask 'standard-notes' do
  version '0.2.5'
  sha256 '0e5a6c5f2154e2e291089e00cc478d45178ab229de107cfed704d6cbee43f601'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/standard-notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: 'b2da36af725cdd4241a973d308c985c7c7278f707e6d7439fa4909061c914302'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
