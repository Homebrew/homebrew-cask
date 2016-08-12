cask 'devonthink-pro' do
  version '2.9.2'
  sha256 '4ffd5ab148321e358c429667b66f49f8766c12568147fdc2f9d3ed18764494c3'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: 'e16f6b6e725b7a92413182cb57bd84496b411607fef21ba66cb5b98333195f7b'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :commercial

  app 'DEVONthink Pro.app'
end
