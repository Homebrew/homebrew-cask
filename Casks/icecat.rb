cask 'icecat' do
  version '38.6.0'
  sha256 '13e9146814ca4ec728b9cb54496d58a5021221a7708d8e3da24e095b1f51bd5f'

  url "https://ftp.gnu.org/gnu/gnuzilla/#{version}/icecat-#{version}.en-US.mac64.dmg"
  name 'IceCat'
  homepage 'https://www.gnu.org/software/gnuzilla/'
  license :gpl

  app 'IceCat.app'
end
