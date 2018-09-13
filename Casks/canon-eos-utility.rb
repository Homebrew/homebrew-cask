cask 'canon-eos-utility' do
  version '3.8.20'
  sha256 '7c3480037da00c6b033410d844ab2065be5e10f62b6e98b25aebf451ecb164ef'

  # gdlp01.c-wss.com/gds/3/0200005443/01/eum3.8.20-installer.dmg.zip was verified as official when first introduced to the cask
  url 'http://gdlp01.c-wss.com/gds/3/0200005443/01/eum3.8.20-installer.dmg.zip'
  name 'Canon EOS Utility'
  homepage 'https://www.usa.canon.com/internet/portal/us/home/support/self-help-center/eos-utility'

  auto_updates true
  depends_on macos: '>= :el_capitan'
  container type: :zip

  installer manual: "eum#{version}-installer.dmg"

  uninstall delete: [
                      '/Applications/Canon Utilities/Auto Update Service',
                      '/Applications/Canon Utilities/CameraSurveyProgram',
                      '/Applications/Canon Utilities/EOS Lens Registration Tool',
                      '/Applications/Canon Utilities/EOS Utility',
                      '/Applications/Canon Utilities/EOS Web Service Registration Tool',
                      '~/Library/Caches/com.canon.EOS-Lens-Registration-Tool',
                      '~/Library/Caches/com.canon.UpdateChecker',
                      '~/Library/Preferences/jp.co.canon.ic.camerasurveyprogram.plist',
                      '~/Library/Preferences/com.canon.EOS Utility 2.plist',
                      '~/Library/Preferences/com.canon.EOS-Utility.plist',
                      '~/Library/Preferences/com.canon.EOS-Utility-3.plist',
                    ]
end
