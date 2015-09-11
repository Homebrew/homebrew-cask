cask :v1 => 'slicy' do
  version :latest
  sha256 :no_check

  url 'https://macrabbit.com/slicy/get/'
  appcast 'https://update.macrabbit.com/slicy/1.1.3.xml'
  name 'Slicy'
  homepage 'http://macrabbit.com/slicy/'
  license :commercial

  app 'Slicy.app'
end
