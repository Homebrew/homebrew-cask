cask 'spatterlight' do
  version '0.5.0'
  sha256 '1729c51676f791149f4829454318f373eff43bf8d8388ecbe3b345308c669ba1'

  url "http://ccxvii.net/spatterlight/download/spatterlight-#{version}.zip"
  appcast 'http://ccxvii.net/spatterlight/',
          checkpoint: '2f5efdb5c866da041e7ae5a877a552a92baa4a08bf1704d49afcd601370527f9'
  name 'Spatterlight'
  homepage 'http://ccxvii.net/spatterlight/'

  app 'Spatterlight.app'
end
