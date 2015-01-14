cask :v1 => 'sizeup' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/download/SizeUp.zip'
  appcast 'http://www.irradiatedsoftware.com/updates/profiles/sizeup.php'
  homepage 'http://www.irradiatedsoftware.com/sizeup/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SizeUp.app'

  zap :delete => [
                  '~/Library/Preferences/com.irradiatedsoftware.SizeUp.plist',
                  '~/Library/Application Support/SizeUp',
                 ]
end
