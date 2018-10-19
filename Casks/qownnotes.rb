cask 'qownnotes' do
  version '18.10.3,b3879-171438'
  sha256 'd93bb3d67afe7dec625e0f94a5846d317e3d9770943d5bfa37e08f425e3cf5c5'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
