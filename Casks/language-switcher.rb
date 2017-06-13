cask 'language-switcher' do
  version '1.1.7'
  sha256 'c65882f00b195a0821dd3baf2c81a71d3ddd01b64cf6beaf56abb47cb948ffa8'

  url "http://www.tj-hd.co.uk/downloads/Language_Switcher_#{version.dots_to_underscores}.dmg"
  appcast 'http://feeds.tj-hd.co.uk/feeds/language_switcher/appcast.xml',
          checkpoint: '0a33d4efed28803122f154fd8a9eb0c62f60534ca542f1fa80a98341fcce4f15'
  name 'Language Switcher'
  homepage 'http://www.tj-hd.co.uk/en-gb/languageswitcher/'

  app 'Language Switcher.app'
end
