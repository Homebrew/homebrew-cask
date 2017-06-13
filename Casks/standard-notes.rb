cask 'standard-notes' do
  version '1.0.1'
  sha256 'ed8c051b5c97057b3aa29bcf9a768e142cc68617cecb0f43e546bfb59ce6cf67'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/standard-notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: 'db186136e9ba6f1b372a0245433f5265b216672984dc93ae7d52ace165ab26fe'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
