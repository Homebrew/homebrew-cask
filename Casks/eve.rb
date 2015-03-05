cask :v1 => 'eve' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/hotkeyeve/Downloads/EVE-latest.zip'
  name 'EVE'
  appcast 'https://s3.amazonaws.com/hotkeyeve/hotkeyEVEappcast.xml',
          :sha256 => '771a6b166a2752502899a4c5117b08aae56b36a72122a34dbb304ab7d7c8b0e5'
  homepage 'http://www.hotkey-eve.com/'
  license :gratis

  app 'EVE.app'
end
