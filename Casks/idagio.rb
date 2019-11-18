cask 'idagio' do
  version '0.0.104'
  sha256 '052b29d664ccd0ddc000da838721cb8afbaf78b9e30a862174488fa4a516f6bc'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
