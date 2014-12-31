cask :v1 => 'color-oracle' do
  version :latest
  sha256 :no_check

  url 'http://colororacle.org/ColorOracleMac.zip'
  homepage 'http://colororacle.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Color Oracle.app'
end
