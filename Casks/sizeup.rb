cask 'sizeup' do
  version '1.7.1'
  sha256 'e722b4c96256fcea252a92c798d03a0927b2826a1d6752446ed4f4f20817743a'

  url "https://www.irradiatedsoftware.com/downloads/SizeUp_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/sizeup.php',
          :sha256 => 'cb9191cb1c5cc0dc8fa7863e453064c4f615425240fc4c34bf0b50e0138f44ff'
  name 'SizeUp'
  homepage 'https://www.irradiatedsoftware.com/sizeup/'
  license :commercial

  app 'SizeUp.app'

  zap :delete => [
                   '~/Library/Preferences/com.irradiatedsoftware.SizeUp.plist',
                   '~/Library/Application Support/SizeUp',
                 ]
end
