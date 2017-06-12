cask 'gpodder' do
  version '3.9.3_0'
  sha256 '6116f70e2db7bc37171762f7dd0bf8019a5518b6bb7c3e15b9dba573f5854c00'

  # sourceforge.net/gpodder was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpodder/gPodder-#{version}.zip"
  appcast 'https://sourceforge.net/projects/gpodder/rss?path=/macosx',
          checkpoint: 'fee22810723be4fcdd5d0f2855f4e79c302db35e3bd867a8bf20e8dfab9ccb91'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
