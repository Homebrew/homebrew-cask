cask 'collabshot' do
  version '1.2.3.985'
  sha256 '30bffefc6baf6c34966d746bef57929027863451'

  url 'https://collabshot.s3.amazonaws.com/desktop/builds/mac/Collabshot_#{version}.dmg'
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.collabshot.com/desktop/latest/mac'
  name 'Collabshot'
  homepage 'https://www.collabshot.com/'

  app 'Collabshot.app'
end
