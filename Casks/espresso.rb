cask :v1 => 'espresso' do
  version :latest
  sha256 :no_check

  url 'https://macrabbit.com/espresso/get/'
  name 'Espresso'
  homepage 'http://macrabbit.com/espresso/'
  license :freemium

  app 'Espresso.app'
end
