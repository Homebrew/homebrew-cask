cask :v1 => 'money' do
  version '4.5.5'
  sha256 '6676fcc086b7972a1a13c76b3b27898a1170d808cc570d262fe0bfb902c00582'

  url "http://download.jumsoft.com/Applications/Money/Money_#{version}.zip"
  appcast 'http://www.jumsoft.com/downloads/updates/money4.rss',
          :sha256 => 'b96c8822636a881e3672876695bf9e7aa9c9e398bf48d1e7f59fc6a2c99264c9'
  homepage 'http://www.jumsoft.com/money/'
  license :unknown

  app 'Money.app'
end
