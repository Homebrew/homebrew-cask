cask 'slicy' do
  version :latest
  sha256 :no_check

  url 'https://macrabbit.com/slicy/get/'
  appcast 'https://update.macrabbit.com/slicy/1.1.3.xml',
          :checkpoint => '1a1a12ed0a4fbf2c492cd532af64dd8b20bb726d67e33e4f4f6ee63e49fa518e'
  name 'Slicy'
  homepage 'http://macrabbit.com/slicy/'
  license :commercial

  app 'Slicy.app'
end
