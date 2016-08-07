cask 'shadowsweeper' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/download/ShadowSweeper.zip'
  name 'ShadowSweeper'
  homepage 'https://www.irradiatedsoftware.com/labs/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ShadowSweeper.app'
end
