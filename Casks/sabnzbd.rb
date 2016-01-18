cask 'sabnzbd' do
  version '0.7.20'
  sha256 'f7c13afe87ad91ab2f12fb6384feef79ae07bf2417395304b3d8961513d23611'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/sabnzbdplus/sabnzbdplus/#{version}/SABnzbd-#{version}-osx.dmg"
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'
  license :gpl

  depends_on macos: '>= :snow_leopard'

  if MacOS.release == :snow_leopard
    app 'Snow Leopard/SABnzbd.app'
  elsif MacOS.release <= :lion
    app 'Lion/SABnzbd.app'
  else
    app 'SABnzbd.app'
  end

  zap delete: [
                '~/Library/Application Support/SABnzbd/sabnzbd.ini',
                '~/Library/Application Support/SABnzbd/admin/rss_data.sab',
              ]
end
