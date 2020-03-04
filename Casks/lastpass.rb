cask 'lastpass' do
  version '4.43.0'
  sha256 'c1e8d7ca66506c34f2630ae5e09b92eadc0befe27ed0b3f19697e2016b97c8e5'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
