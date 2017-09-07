cask 'standard-notes' do
  version '1.2.4'
  sha256 'eb52620df8d16c25a652b9955711d2ccd7b8a594442a9f70b4defa2cb1ffaf3d'

  # github.com/standardnotes/desktop was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/standard-notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: '3a74730c58a6c0ff7350fb481dbc78301ddce39f6dacac785cef832c1051fb02'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
