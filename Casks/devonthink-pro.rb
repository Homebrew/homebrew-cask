cask 'devonthink-pro' do
  version '2.9.13'
  sha256 '1705c28fef0ef199e7b4a81b28feb35df79e3f2cd34096db435c8375ec998235'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '22d13ee1bb93e91602ee0428c6f03dc6095da90a236cedf3f66a54e961315fdb'
  name 'DEVONthink Pro'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  app 'DEVONthink Pro.app'
end
