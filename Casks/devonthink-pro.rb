cask 'devonthink-pro' do
  version '2.9.10'
  sha256 '948844e08b25f764ccaa9338b85e2d8b58eede5c2f5aa9add768eadcb51e34a7'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '2ebb936e76a586214ec01059877d6eff022852817950b78f3a6b293a6af3b103'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  app 'DEVONthink Pro.app'
end
