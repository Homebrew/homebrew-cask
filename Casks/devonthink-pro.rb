cask 'devonthink-pro' do
  version '2.9.17'
  sha256 '3a01a261a8e5d9b452fbae7d2b22a1c1fd7b95fc0b81e28e5b00aeab79d77c14'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '43d628815d312a19ec87ba8f9d03f668626e6b186f00f74591f2bcf573212e63'
  name 'DEVONthink Pro'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'DEVONthink Pro.app'
end
