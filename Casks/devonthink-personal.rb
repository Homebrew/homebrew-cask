cask 'devonthink-personal' do
  version '2.8.9'
  sha256 'e9c770488e6e3810f960cb4914f6bb4c6926c2b9491ec8f35b288f3fe01acf9e'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.dmg.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: '74869e25db343babc3d0afec8ac443c309f07b343e387aeb28cfb8c66292d910'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'
  license :commercial

  depends_on macos: '>= :mountain_lion'
  container nested: 'DEVONthink_Personal.dmg'

  app 'DEVONthink Personal.app'
end
