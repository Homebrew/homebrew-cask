cask 'qownnotes' do
  version '17.11.3,b3342-180420'
  sha256 '346db08d82526d9e01c3ab385457f065ed8274ca2a8976312a6cc70343c86d91'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '956d137cc880e8776e3b20eeee0fbe20d019db18d303634addd19338c04d9bb4'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
