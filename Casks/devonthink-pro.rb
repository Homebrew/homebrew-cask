cask 'devonthink-pro' do
  version '2.9.4'
  sha256 '15a16919cee3c02a804cd0f7485bf0a894f0170b7ca8383ef1e998a30c2f7a97'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: 'e7abe60167421973d5412a2037efc8d983394402286bb930788684cf94357d81'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :commercial

  app 'DEVONthink Pro.app'
end
