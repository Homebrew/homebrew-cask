cask 'standard-notes' do
  version '1.2.1'
  sha256 '28a2c42ab2e21873d3e11b6864275cc52dcc69282c0d3821f5883cdc68bc66f6'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/standard-notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: '0f07adee4fbe05b6656ee8aab5e7f34dd7b3379f326d99419da57111432d7947'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
