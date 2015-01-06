cask :v1 => 'eve' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/hotkeyeve/Downloads/EVE-latest.zip'
  appcast 'https://s3.amazonaws.com/hotkeyeve/hotkeyEVEappcast.xml'
  homepage 'http://www.hotkey-eve.com/'
  license :gratis

  app 'EVE.app'
end
