cask 'devonthink-pro' do
  version '2.9.8'
  sha256 '8cbf54ca7651b96fbef4ab6fb7996bc1875affb29e463a29ec63e02b8c13ae09'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '8ac19c9384aecf656093ace77d527870718d7448339f55164d2548d270c6c8e8'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  app 'DEVONthink Pro.app'
end
