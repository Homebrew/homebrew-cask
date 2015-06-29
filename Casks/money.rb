cask :v1 => 'money' do
  version '4.6'
  sha256 'd012fd407a083f01cae851bdc43caf311e85b6cedaf0c05b44a0539711a4a47c'

  url "http://download.jumsoft.com/Applications/Money/Money_#{version}.zip"
  appcast 'http://www.jumsoft.com/downloads/updates/money4.rss',
          :sha256 => '92fb9af194903f4f4336c54957feed8537060181eb8c5b4f5b97ccb3c32187e0'
  name 'Money'
  homepage 'https://www.jumsoft.com/money/'
  license :commercial

  app 'Money.app'
end
