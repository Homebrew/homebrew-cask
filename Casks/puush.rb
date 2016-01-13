cask 'puush' do
  version :latest
  sha256 :no_check

  url 'https://puush.me/dl/puush.zip'
  appcast 'https://puush.me/dl/puush.xml?hax=jax',
          :checkpoint => '53b2315d38e4adfcf61f436072d4304d902c58b8628db6ba7df41bc9b5ec62aa'
  name 'puush'
  homepage 'https://puush.me/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'puush.app'
end
