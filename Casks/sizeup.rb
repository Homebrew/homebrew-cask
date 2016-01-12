cask 'sizeup' do
  version '1.7.1'
  sha256 'e722b4c96256fcea252a92c798d03a0927b2826a1d6752446ed4f4f20817743a'

  url "https://www.irradiatedsoftware.com/downloads/SizeUp_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/sizeup.php',
          :sha256 => '563a7a8eb8623b0af56921f32407cfbc83752edc5a0f2dfe1eff73be7525c2d6'
  name 'SizeUp'
  homepage 'https://www.irradiatedsoftware.com/sizeup/'
  license :commercial

  app 'SizeUp.app'

  zap :delete => [
                   '~/Library/Preferences/com.irradiatedsoftware.SizeUp.plist',
                   '~/Library/Application Support/SizeUp',
                 ]
end
