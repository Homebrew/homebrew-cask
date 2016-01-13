cask 'slicy' do
  version :latest
  sha256 :no_check

  url 'https://macrabbit.com/slicy/get/'
  appcast 'https://update.macrabbit.com/slicy/1.1.3.xml',
          :checkpoint => '39d01f62bb6ab96fdee061a8077fd8cbffcafee6551d7be4bc0fe4dc20249e3d'
  name 'Slicy'
  homepage 'http://macrabbit.com/slicy/'
  license :commercial

  app 'Slicy.app'
end
