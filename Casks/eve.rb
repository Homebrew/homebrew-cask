cask 'eve' do
  version '1.5.0'
  sha256 '1d27a231ef6fc9eeefd870797f539e87f19b806600d3e1b8e652bb090483267e'

  # amazonaws.com/hotkeyeve was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/hotkeyeve/Downloads/EVE-latest.zip'
  appcast 'https://s3.amazonaws.com/hotkeyeve/hotkeyEVEappcast.xml',
          checkpoint: 'e9ec5e3e38ebb8c634bb750a6a41de8267c2f12adaf7ee3e29eb8d47be8f79ae'
  name 'EVE'
  homepage 'http://www.hotkey-eve.com/'

  app 'EVE.app'
end
