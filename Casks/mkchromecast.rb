cask 'mkchromecast' do
  version '0.2.4'
  sha256 '4e02180d77c3ebf8b01e0f5b37d45895944749411c4ad60425b981b1fa38f333'

  url "https://github.com/muammar/mkchromecast/releases/download/#{version}/mkchromecast_v#{version}.dmg"
  appcast 'https://github.com/muammar/mkchromecast/releases.atom',
          checkpoint: '77b8bba9ad445ce5a571178858d94d134755f7b1be455f8da468eb5bd2e4ef06'
  name 'mkchromecast'
  homepage 'http://mkchromecast.com'
  license :mit

  depends_on cask: 'soundflower'

  app 'mkchromecast.app'
end
