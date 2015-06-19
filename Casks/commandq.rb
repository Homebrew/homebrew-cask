cask :v1 => 'commandq' do
  version :latest
  sha256 :no_check

  url 'https://clickontyler.com/commandq/download/'
  name 'CommandQ'
  appcast 'http://shine.clickontyler.com/appcast.php?id=16',
          :sha256 => 'aded9f4d5543c963c0989f53ba18c35b2053703b543b10a54c61a6b42b53dd50'
  homepage 'https://clickontyler.com/commandq/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CommandQ.app'
end
