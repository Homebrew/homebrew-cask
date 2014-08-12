class Limechat < Cask
  version '2.42'
  sha256 '708d10591784e5beb7ed80236d809d5cd4f992c133483bc2a82775acdc6f1f0f'

  url 'https://downloads.sourceforge.net/project/limechat/limechat/LimeChat_2.42.tbz'
  appcast 'http://limechat.net/mac/appcast.xml'
  homepage 'http://limechat.net/mac/'

  link 'LimeChat.app'
end
