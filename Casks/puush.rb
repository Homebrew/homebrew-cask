class Puush < Cask
  url 'https://puush.me/dl/puush.zip'
  appcast 'https://puush.me/dl/puush.xml?hax=jax'
  homepage 'http://puush.me/'
  version 'latest'
  sha256 :no_check
  link 'puush.app'
end
