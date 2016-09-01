cask 'devonthink-pro' do
  version '2.9.3'
  sha256 '96061d924afd0cb6acb5232c94a81e65cb8ebc43d018aace067cbeffd1d197c9'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: 'a47c6d82099bf170f6cfae81d576a3bad3639b6f333fe39da9346fc66276576c'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :commercial

  app 'DEVONthink Pro.app'
end
