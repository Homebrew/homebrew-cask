cask :v1 => 'eve' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/hotkeyeve/Downloads/EVE-latest.zip'
  appcast 'https://s3.amazonaws.com/hotkeyeve/hotkeyEVEappcast.xml'
  homepage 'http://www.hotkey-eve.com/'
  license :unknown

  app 'EVE.app'
end
