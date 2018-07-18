cask 'qownnotes' do
  version '18.07.4,b3694-160104'
  sha256 'dcf7da745aec3fcdb7db76fac36ff0ab5c56bbfee83fe23a069f70d1a9e4d4b6'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
