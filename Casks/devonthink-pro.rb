cask 'devonthink-pro' do
  version '2.9.16'
  sha256 '15d7e7785fa0164ed765677ad80e22f1f31d075b1dc63539018ff40df257f25c'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '5765140ac4a3c7a55f7a197ad636beb6181e739c5ebe60e0625dda1ddc2b0c11'
  name 'DEVONthink Pro'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  app 'DEVONthink Pro.app'
end
