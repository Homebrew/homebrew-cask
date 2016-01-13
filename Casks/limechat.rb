cask 'limechat' do
  if MacOS.release <= :lion
    version '2.38'
    sha256 '1d7bf505ce60f1bfeb809de67d9f07c996a19eaa6d43b3c5e9df3fcc76077e11'
  else
    version '2.42'
    sha256 '708d10591784e5beb7ed80236d809d5cd4f992c133483bc2a82775acdc6f1f0f'
  end

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/limechat/limechat/LimeChat_#{version}.tbz"
  appcast 'http://limechat.net/mac/appcast.xml',
          :checkpoint => '90b1b494b411d180994bbfb9eb6b90a7563f18a4f9b6d0874c9a37689a4d73e6'
  name 'LimeChat'
  homepage 'http://limechat.net/mac/'
  license :gpl

  app 'LimeChat.app'

  zap :delete => [
                   '~/Library/Application Support/LimeChat',
                   '~/Library/Caches/net.limechat.LimeChat',
                   '~/Library/Preferences/net.limechat.LimeChat.plist',
                   '~/Library/Preferences/net.limechat.LimeChat-AppStore.plist',
                 ]
end
