cask 'standard-notes' do
  version '2.0.1'
  sha256 '26b4cec434256815cf95836067f99741224c288348197ef93df61e98120fea12'

  # github.com/standardnotes/desktop was verified as official when first introduced to the cask
  url "https://github.com/standardnotes/desktop/releases/download/v#{version}/standard-notes-#{version}-mac.zip"
  appcast 'https://github.com/standardnotes/desktop/releases.atom',
          checkpoint: '73fd9efce25a7b9dc4e34a504f0d62a4fe4766ce0b50765b7fc5078da92c2564'
  name 'Standard Notes'
  homepage 'https://standardnotes.org/'

  app 'Standard Notes.app'
end
