class Limechat < Cask

  if MacOS.version < :mountain_lion
    url "https://downloads.sourceforge.net/project/limechat/limechat/LimeChat_2.38.tbz"
    sha256 "1d7bf505ce60f1bfeb809de67d9f07c996a19eaa6d43b3c5e9df3fcc76077e11"
    version "2.38"
  else
    url 'https://downloads.sourceforge.net/project/limechat/limechat/LimeChat_2.42.tbz'
    sha256 '708d10591784e5beb7ed80236d809d5cd4f992c133483bc2a82775acdc6f1f0f'
    version '2.42'
  end

  appcast 'http://limechat.net/mac/appcast.xml'
  homepage 'http://limechat.net/mac/'

  link 'LimeChat.app'
end
