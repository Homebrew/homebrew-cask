cask :v1 => 'nimbus' do
  version '0.7.3'
  sha256 '4915e57131db72e08c45e375e4a52a4441f70ef9cfb5a70e433d66949708e82b'

  url "https://github.com/jnordberg/irccloudapp/releases/download/#{version}/Nimbus-#{version}.zip"
  appcast 'https://github.com/jnordberg/irccloudapp/releases.atom'
  name 'Nimbus'
  homepage 'https://github.com/jnordberg/irccloudapp'
  license :mit

  app 'Nimbus.app'
end
