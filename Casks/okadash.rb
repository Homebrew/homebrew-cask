cask 'okadash' do
  version '1.3.0'
  sha256 'fe104be151b46febaca4f427cca098fc049df5eaeb1a6c7e4cd62de5f8f7fbc4'

  url 'https://github.com/konoyono/okadash/releases/download/1.3.0/okadash-1.3.0-mac.zip'
  appcast 'https://github.com/konoyono/okadash/releases/latest'
  name 'okadash'
  homepage 'https://github.com/konoyono/okadash'

  app 'okadash.app'
end
