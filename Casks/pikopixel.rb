cask 'pikopixel' do
  version '1.0-b9'
  sha256 'fb5a495a9284c9ea435f4d48e6572c1e1e673e11fe020e52ac0bf98b73a6f4ce'

  url "http://twilightedge.com/downloads/PikoPixel.#{version}.dmg",
      user_agent: :fake
  appcast 'http://twilightedge.com/mac/pikopixel/history.html',
          checkpoint: '5ab5fa990651cedc8bee56abdf2490bb987480b9aeaf524e744a6694b76ec60d'
  name 'PikoPixel'
  homepage 'http://twilightedge.com/mac/pikopixel/'

  app 'PikoPixel.app'
end
