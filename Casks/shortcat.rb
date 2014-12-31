cask :v1 => 'shortcat' do
  version '0.7.5'
  sha256 '344bfee21417481189600c09a282b9ed4a76b674b4789d3232a29d8f640446fc'

  url "https://files.shortcatapp.com/v#{version}/Shortcat.zip"
  appcast 'https://shortcatapp.com/updates/appcast.xml',
          :sha256 => '38804c1de1cceb99418fb8393b57a99d78815c4d87dd850fe6b9acb0a4dc01de'
  homepage 'http://shortcatapp.com/'
  license :commercial
  tags :vendor => 'Sproutcube'

  app 'Shortcat.app'
end
