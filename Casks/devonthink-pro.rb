cask 'devonthink-pro' do
  version '2.9'
  sha256 'eddf0f9a3726ac01cc9c91261700a02ffc1bda832b7975eeec8bae82909080ff'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '9b6bbc52050f7bb43c340268acc848fb78a4fde0eb32373dc8cd2922b832364c'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :commercial

  app 'DEVONthink Pro.app'
end
