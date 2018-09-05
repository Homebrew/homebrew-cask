cask 'devonthink-pro' do
  version '2.10.1'
  sha256 'b27c7cf75f470d26ca64d9d09c74961ff7b48c06f6bb32dcc6756075678267fb'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml'
  name 'DEVONthink Pro'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'DEVONthink Pro.app'
end
