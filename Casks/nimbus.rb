cask :v1 => 'nimbus' do
  version '0.7.3'
  sha256 '4915e57131db72e08c45e375e4a52a4441f70ef9cfb5a70e433d66949708e82b'

  url "https://github.com/jnordberg/irccloudapp/releases/download/#{version}/Nimbus-#{version}.zip"
  appcast 'https://github.com/jnordberg/irccloudapp/raw/master/appcast.xml',
          :sha256 => 'aa3b9af94d19e8df33fc083ea87ffa8fe227742965d42368822b3e4d6ded9d03'
  homepage 'https://github.com/jnordberg/irccloudapp'
  license :mit

  app 'Nimbus.app'
end
