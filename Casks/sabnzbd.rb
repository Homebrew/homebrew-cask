cask :v1 => 'sabnzbd' do
  version '0.7.20'
  sha256 'f7c13afe87ad91ab2f12fb6384feef79ae07bf2417395304b3d8961513d23611'

  url "https://downloads.sourceforge.net/project/sabnzbdplus/sabnzbdplus/#{version}/SABnzbd-#{version}-osx.dmg"
  homepage 'http://sabnzbd.org/'
  license :oss

  app 'SABnzbd.app'

  zap :delete => [
                  '~/Library/Application Support/SABnzbd/sabnzbd.ini',
                  '~/Library/Application Support/SABnzbd/admin/rss_data.sab',
                 ]
end
