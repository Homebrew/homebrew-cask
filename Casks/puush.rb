cask :v1 => 'puush' do
  version :latest
  sha256 :no_check

  url 'https://puush.me/dl/puush.zip'
  appcast 'https://puush.me/dl/puush.xml?hax=jax'
  name 'puush'
  homepage 'https://puush.me/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'puush.app'
end
