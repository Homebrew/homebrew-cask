cask 'qownnotes' do
  version '18.07.8,b3711-181926'
  sha256 '06f914ab3866fb7e718235a42ca93208aa3f6c63da9ec92715f378569a6dc6ae'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
