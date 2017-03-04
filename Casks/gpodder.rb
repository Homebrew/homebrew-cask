cask 'gpodder' do
  version '3.9.3_0'
  sha256 '6116f70e2db7bc37171762f7dd0bf8019a5518b6bb7c3e15b9dba573f5854c00'

  # sourceforge.net/gpodder was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpodder/gPodder-#{version}.zip"
  appcast 'https://sourceforge.net/projects/gpodder/rss?path=/macosx',
          checkpoint: 'cb0012d8251330c826ecb2ac16bdd1db728c8cdb7013d8e836a7dd0b8fec7bc9'
  name 'gPodder'
  homepage 'https://gpodder.org/'

  app 'gPodder.app'
end
