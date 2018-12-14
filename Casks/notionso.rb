cask 'notionso' do
  version '0.3.0'
  sha256 :no_check

  # desktop-release.notion-static.com was verified as official when first introduced to the cask
  url 'https://desktop-release.notion-static.com/Notion-0.3.0.dmg'
  name 'Notion'
  homepage 'https://www.notion.so/'

  app 'Notion.app'
end
