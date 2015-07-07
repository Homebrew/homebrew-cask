cask :v1 => 'sabnzbd' do
  version '0.7.20'
  sha256 'f7c13afe87ad91ab2f12fb6384feef79ae07bf2417395304b3d8961513d23611'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/sabnzbdplus/sabnzbdplus/#{version}/SABnzbd-#{version}-osx.dmg"
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'
  license :gpl

  app 'SABnzbd.app'

  zap :delete => [
                  '~/Library/Application Support/SABnzbd/sabnzbd.ini',
                  '~/Library/Application Support/SABnzbd/admin/rss_data.sab',
                 ]
end
