class Money < Cask
  version '4.5.5'
  sha256 '6676fcc086b7972a1a13c76b3b27898a1170d808cc570d262fe0bfb902c00582'

  url "http://download.jumsoft.com/Applications/Money/Money_#{version}.zip"
  appcast 'http://www.jumsoft.com/downloads/updates/money4.rss'
  homepage 'http://www.jumsoft.com/money/'

  link 'Money.app'
end
