cask 'avast-security' do
  version :latest
  sha256 :no_check

  url 'http://download.ff.avast.com/mac/avast_security_online.dmg'
  name 'Avast Security'
  homepage 'https://www.avast.com/'

  pkg 'Avast Security.pkg'

  uninstall script: {
                      executable:   '/Library/Application Support/Avast/hub/uninstall.sh',
                      must_succeed: false, # A non-0 exit code may be given even if the uninstall succeeds (https://github.com/caskroom/homebrew-cask/issues/21740#issuecomment-224094946).
                      sudo:         true,
                    }

  zap trash: '~/Library/Preferences/com.avast.avast!.plist'
end
