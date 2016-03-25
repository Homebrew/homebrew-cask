cask 'sabnzbd' do
  version '1.0.0'
  sha256 'c5be610170b48d91802f56778eeb9c5f281cef148e0e20dad20f7be7951a2e71'

  url "https://github.com/sabnzbd/sabnzbd/releases/download/#{version}/SABnzbd-#{version}-osx.dmg"
  appcast 'https://github.com/sabnzbd/sabnzbd/releases.atom',
          checkpoint: '2cc1b3001f1adc952c488fbaea4b8296df09d94136061a75f05584048a6f1e9d'
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
