cask 'fishapp' do
  version '2.2.0'
  sha256 'e07d30687eff3a66f17384e3d870f42e4eea722f24f8e742c69b2d5f4f3ce61d'

  url "http://fishshell.com/files/#{version}/fish.app.zip"
  name 'Fish App'
  homepage 'http://fishshell.com'
  license :gpl

  app 'fish.app'
end
