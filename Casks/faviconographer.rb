cask 'faviconographer' do
  version '1.1.2'
  sha256 'e0b099a9a6a86d24541a75704f5cbd9a991a12e3787ae7bfbc6c224dbadbba06'

  url "https://faviconographer.com/download/Faviconographer-#{version}.dmg"
  appcast 'https://faviconographer.com/updates/faviconographer.xml'
  name 'Faviconographer'
  homepage 'https://faviconographer.com/'

  app 'Faviconographer.app'
end
