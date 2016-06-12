cask 'devonthink-pro' do
  version '2.8.11'
  sha256 '98e96a8c917fde97e5144ef1362f608c45aa7399daea9b35ea46e428eafcd0b1'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '449e8f1eb25536bacfb6282ecc31cdc7f05f59f75e7f8512a47aceee3675a9e6'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :commercial

  app 'DEVONthink Pro.app'
end
