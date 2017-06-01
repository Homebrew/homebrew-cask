cask 'qownnotes' do
  version '17.06.0,b3031-165427'
  sha256 '6270a190b3cef6d237fc6d6663b60f34a1bc1b7db42ea820608489d91d8e32a7'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '331417beb4880fc7478f1cc6ac49768909874cc03749a50e3e8c47cd3813aea6'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
