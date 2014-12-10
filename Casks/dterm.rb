cask :v1 => 'dterm' do
  version :latest
  sha256 :no_check

  url 'http://files.decimus.net/DTerm/DTerm.zip'
  appcast 'http://decimus.net/appcasts/DTerm.xml'
  homepage 'http://decimus.net/DTerm'
  license :unknown    # todo: improve this machine-generated value

  app 'DTerm.app'
end
