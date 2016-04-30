cask 'sabnzbd' do
  version '1.0.1'
  sha256 'f3c76111c28665d97911cf38369a89046f16942646a4fd2d45a13760d91f5ba2'

  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: 'dc819feba5eee5f4006a5d2ceaafe7ddb784ce6672aaf4496217f43c90320f97'
  name 'SABnzbd'
  homepage 'https://sabnzbd.org/'
  license :gpl

  depends_on macos: '>= :mavericks'

  if MacOS.release == :mavericks
    app 'Mavericks/SABnzbd.app'
  elsif MacOS.release <= :yosemite
    app 'Yosemite/SABnzbd.app'
  else
    app 'SABnzbd.app'
  end

  zap delete: '~/Library/Application Support/SABnzbd'
end
