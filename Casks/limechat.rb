cask :v1 => 'limechat' do

  if MacOS.release <= :lion
    version '2.38'
    sha256 '1d7bf505ce60f1bfeb809de67d9f07c996a19eaa6d43b3c5e9df3fcc76077e11'
  else
    version '2.42'
    sha256 '708d10591784e5beb7ed80236d809d5cd4f992c133483bc2a82775acdc6f1f0f'
  end

  url "https://downloads.sourceforge.net/project/limechat/limechat/LimeChat_#{version}.tbz"
  appcast 'http://limechat.net/mac/appcast.xml',
          :sha256 => '32dd2f6795c4f19940a8bb8a093b5b297167c28a4b6712cb94d6de14f1002e4f'
  homepage 'http://limechat.net/mac/'
  license :oss

  app 'LimeChat.app'

  zap :delete => '~/Library/Preferences/net.limechat.LimeChat-AppStore.plist'
end
