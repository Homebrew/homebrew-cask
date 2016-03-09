cask 'devonthink-pro' do
  version '2.8.9'
  sha256 '7c4c0f9f1e4e49ce53ac4746ac18a888c450a46309a1b6534de51fe18ae3ee93'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.dmg.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '6600302ef12caffeb9cd2d6c8db9bd5ca3d82d7067a4d59b2c4dbfc29ae87842'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :commercial

  container nested: 'DEVONthink_Pro.dmg'

  app 'DEVONthink Pro.app'
end
