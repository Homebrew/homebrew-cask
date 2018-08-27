cask 'eve' do
  version '1.5.0'
  sha256 '1d27a231ef6fc9eeefd870797f539e87f19b806600d3e1b8e652bb090483267e'

  # amazonaws.com/hotkeyeve was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/hotkeyeve/Downloads/EVE-latest.zip'
  appcast 'https://s3.amazonaws.com/hotkeyeve/hotkeyEVEappcast.xml'
  name 'EVE'
  homepage 'http://www.hotkey-eve.com/'

  app 'EVE.app'
end
