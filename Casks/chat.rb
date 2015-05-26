cask :v1 => 'chat' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/com.perma.chat/Chat.zip'
  name 'Chat'
  homepage 'https://chatformac.com/'
  license :gratis

  app 'Chat.app'
end
