cask 'devonthink-pro-office' do
  version '2.9.12'
  sha256 'a576f0762e462e93c903dcf04d3659341959e7419805c662187dd7787a893166'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro_Office.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300125739&format=xml',
          checkpoint: '6310dd5b1a2baed29c35be687941dc54f30d96c53a2e66005b6af0deef15b052'
  name 'DEVONthink Pro Office'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-pro-office.html'

  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3838
  app 'DEVONthink Pro.app', target: 'DEVONthink Pro Office.app'
end
