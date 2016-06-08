cask 'mkchromecast' do
  version '0.2.6'
  sha256 'fb750038fc05bef5525923f89aadd76f1ee007fe7e7157b1a1614237cfb16f59'

  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: 'e23edca49596bcaa63cc9de6f3d908dd6f7aba80d0c52c46485d8e78bc8aaf43'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
