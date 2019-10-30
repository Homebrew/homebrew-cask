cask 'lastpass' do
  version '4.36.0'
  sha256 'cf9fa68e6596904732960a67521b79dd8f9bc95f920af9c9425886fbe23741ce'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
