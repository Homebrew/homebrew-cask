cask 'lastpass' do
  version '4.32.0'
  sha256 '61a4bddc08da7c61cc1f95dd6a19d90400d46554ba6dcc69158cd8b65d70511e'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
