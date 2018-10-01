cask 'qownnotes' do
  version '18.09.5,b3847-085027'
  sha256 '2496fac811ed547ec7dce7f28a5c45f156763d918769ebc5b1233fcc21a18b69'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
