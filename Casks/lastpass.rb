cask 'lastpass' do
  version '4.46.0'
  sha256 '9a5c512159b50cc3b154522dfadc14faa90b6a50eee1955611d3cf282ab66a32'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
