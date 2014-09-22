class Sabnzbd < Cask
  version '0.7.18'
  sha256 '80d84a5acbc8498868c7af3e25fc9ae3503cb0c66032a0883d497de983219c43'

  url 'https://downloads.sourceforge.net/project/sabnzbdplus/sabnzbdplus/0.7.18/SABnzbd-0.7.18-osx.dmg'
  homepage 'http://sabnzbd.org/'

  app '10.8 (M-Lion) 10.9 (Mavericks)/SABnzbd.app'
  zap :delete => [
                  '~/Library/Application Support/SABnzbd/sabnzbd.ini',
                  '~/Library/Application Support/SABnzbd/admin/rss_data.sab',
                 ]
end
