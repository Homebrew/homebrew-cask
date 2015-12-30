cask 'sizeup' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/download/SizeUp.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/sizeup.php',
          :sha256 => '017c02d6671e43dcdbe80e9b5c8f2ae48110846ffb833591bd4fb7a38276ecde'
  name 'SizeUp'
  homepage 'https://www.irradiatedsoftware.com/sizeup/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SizeUp.app'

  zap :delete => [
                  '~/Library/Preferences/com.irradiatedsoftware.SizeUp.plist',
                  '~/Library/Application Support/SizeUp',
                 ]
end
