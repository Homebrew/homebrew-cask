cask 'fanny' do
  version '1.0.2'
  sha256 'bfad1c1fd9e08f390f7e80a4f2e5571612843c042aec850efa04d0badc191f06'

  url 'http://fannywidget.com/FannyWidget.zip'
  name 'FannyWidget'
  homepage 'http://fannywidget.com/'

  app "Fanny #{version}/fanny.app"
end
