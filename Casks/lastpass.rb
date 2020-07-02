cask 'lastpass' do
  version '4.51.0'
  sha256 '6e3caacd8abaa4d5a8115f8b46ef0355ad68dac9c7d66e4a4e876a14785c67e5'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
