cask :v1 => 'dterm' do
  version :latest
  sha256 :no_check

  url 'http://files.decimus.net/DTerm/DTerm.zip'
  appcast 'http://decimus.net/appcasts/DTerm.xml'
  homepage 'http://decimus.net/DTerm'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DTerm.app'

  accessibility_access true
end
