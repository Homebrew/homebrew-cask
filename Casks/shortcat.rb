class Shortcat < Cask
  version '0.7.2'
  sha256 '5ddb9edbf79c627f19b67f237fa899982ae47064fae01168abe7e3be2be0ce31'

  url "https://files.shortcatapp.com/v#{version}/Shortcat.zip"
  appcast 'https://shortcatapp.com/updates/appcast.xml'
  homepage 'http://shortcatapp.com/'

  link 'Shortcat.app'
end
