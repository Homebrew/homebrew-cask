cask 'color-oracle' do
  version :latest
  sha256 :no_check

  url 'http://colororacle.org/ColorOracleMac.zip'
  name 'Color Oracle'
  homepage 'http://colororacle.org/'
  license :mit

  app 'Color Oracle.app'
end
