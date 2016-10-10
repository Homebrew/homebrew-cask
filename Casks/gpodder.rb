cask 'gpodder' do
  version '3.9.0_2'
  sha256 'c5dafe2685057545cf6505d9492c429ab9c585e159c04bec62847c9ba9a40c2f'

  # sourceforge.net/gpodder was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpodder/gPodder-#{version}.zip"
  appcast 'https://sourceforge.net/projects/gpodder/rss',
          checkpoint: '2e66a10eb5778906af6dbcccc6a1e46d9d43e63bb3d8216c9c67a81a5de4e838'
  name 'gPodder'
  homepage 'http://gpodder.org/'

  app 'gPodder.app'
end
