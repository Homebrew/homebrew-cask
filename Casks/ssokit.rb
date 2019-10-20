cask 'ssokit' do
  version '1.1.0'
  sha256 'e3da08bae091e344bb733c822c6b02dfd1aa9c7cca8a05a74838d69ac5b60028'

  url 'https://github.com/rangaofei/SSokit-qmake/releases/download/1.1.0/SSokit_1.1.0.dmg'

  name 'SSoikt'

  homepage 'https://github.com/rangaofei/SSokit-qmake'

  app 'SSokit.app'

  zap trash: '~/Library/Preferences/cn.rangaofei.SSokit.plist'
end
