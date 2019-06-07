cask 'lastpass' do
  version '4.29.0'
  sha256 'b210471ca26ecd7c60ca1df540ffa44f64a326094d14f396e69cbccf7542c3e4'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
