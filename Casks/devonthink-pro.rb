cask 'devonthink-pro' do
  version '2.8.8'
  sha256 'f96de948ad5437a32dae136a0cbf115fafb82fce5355af1132d78470eb4883a7'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.dmg.zip"
  # devon-technologies.com verified as official when first introduced to the cask
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: 'ffcc27f55191509bff9cef887d31ddbf52b4d6b30392b5a7fd14dc888cec2464'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :commercial

  container nested: 'DEVONthink_Pro.dmg'

  app 'DEVONthink Pro.app'
end
