cask 'devonthink-pro' do
  version '2.8.9'
  sha256 '7c4c0f9f1e4e49ce53ac4746ac18a888c450a46309a1b6534de51fe18ae3ee93'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.dmg.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: 'c9641ba2132e5c5b1ec37559f0307f3a2ec6765ef6057141c739362657a0fc4e'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :commercial

  container nested: 'DEVONthink_Pro.dmg'

  app 'DEVONthink Pro.app'
end
