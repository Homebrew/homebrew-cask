cask 'qownnotes' do
  version '16.12.0,b2568-113120'
  sha256 '226666a63124686b32a02d2ea145920659baa0fd4d9daed616566880fae79d84'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: '81b0ed94ba7eebd8dfd1b8f890f383003e561ff0ba7e969581803222faf6d782'
  name 'QOwnNotes'
  homepage 'http://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
