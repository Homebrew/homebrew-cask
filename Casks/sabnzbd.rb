cask :v1 => 'sabnzbd' do
  version '0.7.19'
  sha256 '193ec185540c884e85106c608de2bb9e92e2daae8a3b4309072be927d70ae7ca'

  url "https://downloads.sourceforge.net/project/sabnzbdplus/sabnzbdplus/#{version}/SABnzbd-#{version}-osx.dmg"
  homepage 'http://sabnzbd.org/'
  license :oss

  app 'SABnzbd.app'

  zap :delete => [
                  '~/Library/Application Support/SABnzbd/sabnzbd.ini',
                  '~/Library/Application Support/SABnzbd/admin/rss_data.sab',
                 ]
end
