cask 'puush' do
  version :latest
  sha256 :no_check

  url 'https://puush.me/dl/puush.zip'
  appcast 'https://puush.me/dl/puush.xml?hax=jax',
          :sha256 => 'a95f192ce61400b1e8de6e880072f59229eefa4b2aa646b1707def6abbb375cc'
  name 'puush'
  homepage 'https://puush.me/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'puush.app'
end
