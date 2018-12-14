cask 'notionso' do
  version '0.3.0'
  sha256 :no_check

  url 'https://desktop-release.notion-static.com/Notion-#{version}.dmg'
  name 'Notion'
  homepage 'https://www.notion.so'

  app 'Notion.app'
end
