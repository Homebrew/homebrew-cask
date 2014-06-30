class Puush < Cask
  version 'latest'
  sha256 :no_check

  url 'https://puush.me/dl/puush.zip'
  appcast 'https://puush.me/dl/puush.xml?hax=jax'
  homepage 'http://puush.me/'

  link 'puush.app'
end
