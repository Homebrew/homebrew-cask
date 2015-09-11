cask :v1 => 'devonthink-pro-office' do
  version '2.8.6'
  sha256 'a9229681cb57738bc89f7e74c1f42a1e60689b03345f5c9540f239e43b66a449'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro_Office.dmg.zip"
  appcast 'http://www.devon-technologies.com/Sparkle/DEVONthinkProOffice2.xml',
          :sha256 => 'a6cbe5a8265c35dc5d840725cf102aa207c27d9bd43fc6fda0103bb6bb50d342'
  name 'DEVONthink Pro Office'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro-office.html'
  license :commercial

  container :nested => 'DEVONthink_Pro_Office.dmg'
  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3838
  app 'DEVONthink Pro.app', :target => 'DEVONthink Pro Office.app'

  depends_on :macos => '>= :mountain_lion'
end
