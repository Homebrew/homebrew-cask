cask 'devonthink-pro' do
  version '2.8.8'
  sha256 'f96de948ad5437a32dae136a0cbf115fafb82fce5355af1132d78470eb4883a7'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.dmg.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          :sha256 => '096d660d32614a2d4b80eb1fec7fe7bd478be3513af653c8bd79350878744a02'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :commercial

  container :nested => 'DEVONthink_Pro.dmg'

  app 'DEVONthink Pro.app'
end
