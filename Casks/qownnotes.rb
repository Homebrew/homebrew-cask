cask 'qownnotes' do
  version '16.12.8,b2614-174708'
  sha256 'decd7fccb832f08587112f81d4d079cc8790d59c9173a5a25f13e762396804fc'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '9a11020c880876d7ceb09f99b5e00649a3c10268fee6a24a52ab5310ec1027e8'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
