cask 'devonthink-pro-office' do
  version '2.8.8'
  sha256 'dbed3e907dd1a55c6fddccb8aadc88b88bf4d65bacfa143c0a50eec77844f280'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro_Office.dmg.zip"
  # devon-technologies.com verified as official when first introduced to the cask
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300125739&format=xml',
          checkpoint: '5756d0fcd4818843817f63b8527e4f3a4fbc5f56554cd6e52ba9bac9da1e960f'
  name 'DEVONthink Pro Office'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro-office.html'
  license :commercial

  depends_on macos: '>= :mountain_lion'
  container nested: 'DEVONthink_Pro_Office.dmg'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3838
  app 'DEVONthink Pro.app', target: 'DEVONthink Pro Office.app'
end
