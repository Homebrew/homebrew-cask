cask 'dogecoin' do
  version '1.14.0'
  sha256 '7804e9aad19b23df74820c9cc718208332c35f2467449802b99c71e1dc3c0e43'

  # github.com/dogecoin/dogecoin was verified as official when first introduced to the cask
  url "https://github.com/dogecoin/dogecoin/releases/download/v#{version}/dogecoin-#{version}-osx.dmg"
  appcast 'https://github.com/dogecoin/dogecoin/releases.atom'
  name 'Dogecoin'
  homepage 'https://dogecoin.com/'

  app 'Dogecoin-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Dogecoin-Qt.app", '0755'
  end

  zap trash: '~/Library/com.dogecoin.Dogecoin-Qt.plist'
end
