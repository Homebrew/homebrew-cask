cask 'subethaedit' do
  version '5.0.2'
  sha256 '223e9616b8bb27cad84b9db18444035d086b6c6f20c616365c7fac79d47a6984'

  url "https://subethaedit.net/Releases/SubEthaEdit-#{version}.zip"
  appcast 'https://subethaedit.net/appcast.xml'
  name 'SubEthaEdit'
  homepage 'https://subethaedit.net/'

  app 'SubEthaEdit.app'
end
