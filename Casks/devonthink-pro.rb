cask 'devonthink-pro' do
  version '2.11.1'
  sha256 'ef25a37620fc42218a4c7a86a4d44cb418877f1bdc5ebfb73d17aa0745c40f4b'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml'
  name 'DEVONthink Pro'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'DEVONthink Pro.app'
end
