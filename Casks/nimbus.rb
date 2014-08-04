class Nimbus < Cask
  version '0.7.3'
  sha256 '4915e57131db72e08c45e375e4a52a4441f70ef9cfb5a70e433d66949708e82b'

  url 'https://github.com/jnordberg/irccloudapp/releases/download/0.7.3/Nimbus-0.7.3.zip'
  appcast 'https://github.com/jnordberg/irccloudapp/raw/master/appcast.xml'
  homepage 'https://github.com/jnordberg/irccloudapp'

  link 'Nimbus.app'
end
