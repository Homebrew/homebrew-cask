cask 'lastpass' do
  version '4.48.0'
  sha256 '494e599c207e134824b4df1d7f9d317ce00e445b6fe7c892f6d98c355c763ca3'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
