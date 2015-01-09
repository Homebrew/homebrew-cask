cask :v1 => 'fruitjuice' do
  version :latest
  sha256 :no_check

  url 'http://fruitjuiceapp.com/images/FruitJuice-14-Day-Demo.dmg'
  name 'FruitJuice'
  homepage 'http://fruitjuiceapp.com/'
  license :commercial

  app 'FruitJuice.app'
end
