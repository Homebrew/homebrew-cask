cask 'pikopixel' do
  version '1.0-b8'
  sha256 'b99a077a3ab3cb2f06af70d145977c5c7339d81e861a9b8c3fa2ba39c690181d'

  url "http://twilightedge.com/downloads/PikoPixel.#{version}.dmg",
      user_agent: :fake
  appcast 'http://twilightedge.com/mac/pikopixel/history.html',
          checkpoint: '083969e644e961cfe61696bc5bec560608bbb5d60374216e05407fb9ad404eb1'
  name 'PikoPixel'
  homepage 'http://twilightedge.com/mac/pikopixel/'

  app 'PikoPixel.app'
end
