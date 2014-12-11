cask :v1 => 'color-oracle' do
  version :latest
  sha256 :no_check

  url 'http://colororacle.org/ColorOracleMac.zip'
  homepage 'http://colororacle.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'Color Oracle.app'
end
