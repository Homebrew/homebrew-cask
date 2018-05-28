cask 'qbittorrent' do
  version '4.1.1'
  sha256 'a2983b792de0052c403fd0b0b571e7e40e867a81ac50753b154b733010cd04e5'

  # sourceforge.net/qbittorrent was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qbittorrent/qbittorrent-mac/qbittorrent-#{version}/qbittorrent-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qbittorrent/rss?path=/qbittorrent-mac',
          checkpoint: 'b2642abac94959e03893946592682ec037cc2271c71b999f1f79e3dab1149898'
  name 'qBittorrent'
  homepage 'https://www.qbittorrent.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'qbittorrent.app', target: 'qBittorrent.app'
end
