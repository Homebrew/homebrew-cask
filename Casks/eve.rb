class Eve < Cask
  url 'https://s3.amazonaws.com/hotkeyeve/Downloads/EVE-latest.zip'
  appcast 'https://s3.amazonaws.com/hotkeyeve/hotkeyEVEappcast.xml'
  homepage 'http://www.hotkey-eve.com/'
  version 'latest'
  sha256 :no_check
  link 'EVE.app'
end
