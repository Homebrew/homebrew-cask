cask 'slicy' do
  version :latest
  sha256 :no_check

  url 'https://macrabbit.com/slicy/get/'
  appcast 'https://update.macrabbit.com/slicy/1.1.3.xml',
          :sha256 => '44b67fd99701304843143de924d1af345b841c19444e1d2bf4d6ec0722419054'
  name 'Slicy'
  homepage 'http://macrabbit.com/slicy/'
  license :commercial

  app 'Slicy.app'
end
