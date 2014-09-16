class Charles < Cask
  version '3.9.2'
  sha256 '89b017744181ccec18e8a5ff67b9728a2d2ded5de0620a100a98c8686d867b7b'

  url 'http://www.charlesproxy.com/assets/release/3.9.2/charles-proxy-3.9.2-applejava.dmg'
  homepage 'http://www.charlesproxy.com/'

  app 'Charles.app'
  zap :files => [
                 '~/Library/Application Support/Charles',
                 '~/Library/Preferences/com.xk72.charles.config',
                ]
end
