cask 'devonthink-pro' do
  version '2.9.5'
  sha256 '818bb9d50064609feb365955cffa3a9de0c229f1d4064503e494267acb88eceb'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '4551a1304ab292db85c304dbb427d9399f7df83cbc721c3c3d8e3f9c39a7a432'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  app 'DEVONthink Pro.app'
end
