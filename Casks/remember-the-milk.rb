cask 'remember-the-milk' do
  version '1.2.0'
  sha256 '3d8ad4dc8f58a13246550defb6d3efd46d739981ecae958a2f3419f0fc7acdbf'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast 'https://www.rememberthemilk.com/services/mac/'
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
