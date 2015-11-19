cask :v1 => 'devonthink-pro-office' do
  version '2.8.7'
  sha256 '3c272a0656afe1bee9a683190dbc55484724a81492a3b2ae7f50af8bc96b5894'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro_Office.dmg.zip"
  appcast 'http://www.devon-technologies.com/Sparkle/DEVONthinkProOffice2.xml',
          :sha256 => 'ba7fe4186fdd3577f33e06ede3712de88977e4080388558a4b6990c42bf8bf76'
  name 'DEVONthink Pro Office'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro-office.html'
  license :commercial

  container :nested => 'DEVONthink_Pro_Office.dmg'
  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3838
  app 'DEVONthink Pro.app', :target => 'DEVONthink Pro Office.app'

  depends_on :macos => '>= :mountain_lion'
end
