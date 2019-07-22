cask 'lastpass' do
  version '4.31.0'
  sha256 '59e46babc86159d49709713c6cc07214258e344b60316759428c84da1e4695b7'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
