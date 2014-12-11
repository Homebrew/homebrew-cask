cask :v1 => 'shadowsweeper' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/download/ShadowSweeper.zip'
  homepage 'http://www.irradiatedsoftware.com/labs/'
  license :unknown    # todo: improve this machine-generated value

  app 'ShadowSweeper.app'
end
