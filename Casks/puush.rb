cask :v1 => 'puush' do
  version :latest
  sha256 :no_check

  url 'https://puush.me/dl/puush.zip'
  appcast 'https://puush.me/dl/puush.xml?hax=jax'
  homepage 'http://puush.me/'
  license :unknown    # todo: improve this machine-generated value

  app 'puush.app'
end
