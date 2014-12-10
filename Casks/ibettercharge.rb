cask :v1 => 'ibettercharge' do
  version :latest
  sha256 :no_check

  url 'http://download.softorino.com/ibc/last/'
  appcast 'http://hook.softorino.com/ibc/appcast.xml'
  homepage 'http://softorino.com/ibettercharge/'
  license :unknown    # todo: improve this machine-generated value

  app 'iBetterCharge.app'
end
