cask 'devonthink-pro' do
  version '2.9.9'
  sha256 '665acc29ae0814f7fa6d2311e57636469cea32b09ed56eaed818358dd4ec85fc'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '3e624eeeef6347cb5c852db83a450a3328e5ff6bdac761561c5ff73ae1fe42f0'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  app 'DEVONthink Pro.app'
end
