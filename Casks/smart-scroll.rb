cask :v1 => 'smart-scroll' do
  version :latest
  sha256 :no_check

  url 'http://www.marcmoini.com/SmartScroll.zip'
  name 'Smart Scroll'
  homepage 'http://www.marcmoini.com/sx_en.html'
  license :commercial    # todo: improve this machine-generated value

  prefpane 'Smart Scroll 4.prefPane'
end
