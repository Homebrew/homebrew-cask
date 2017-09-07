cask 'gpodder' do
  version '3.9.3_0'
  sha256 '6116f70e2db7bc37171762f7dd0bf8019a5518b6bb7c3e15b9dba573f5854c00'

  # sourceforge.net/gpodder was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpodder/gPodder-#{version}.zip"
  appcast 'https://sourceforge.net/projects/gpodder/rss?path=/macosx',
          checkpoint: '1955c04944c30bc461dc74140d66f6ab4770ccff98b3abf2272f4faca717d5a9'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
