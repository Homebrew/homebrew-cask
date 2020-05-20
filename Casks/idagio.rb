cask 'idagio' do
  version '0.0.119'
  sha256 'ef6fd9f42adc5744ec3b5378a4d092709936db231b4f33446948ef9a4c6e51f3'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
