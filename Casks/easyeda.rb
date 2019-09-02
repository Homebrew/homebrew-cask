cask 'easyeda' do
  version :latest
  sha256 :no_check

  url 'https://image.easyeda.com/files/easyeda-client-mac-x64.dmg'
  name 'EasyEDA'
  homepage 'https://easyeda.com/'

  app 'EasyEDA.app'

  uninstall delete: [
                      '~/Library/Preferences/com.easyeda.editor.helper.plist',
                      '~/Library/Preferences/com.easyeda.editor.plist',
                      '~/Library/Saved Application State/com.easyeda.editor.savedState',
                      '~/Library/Application Support/EasyEDA',
                      '~/Library/Logs/EasyEDA',
                    ]
end
