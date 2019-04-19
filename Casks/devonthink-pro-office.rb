cask 'devonthink-pro-office' do
  version '2.11.3'
  sha256 '707494d3c709e0afa4b28ddd7c138f3abe5b1d2d20715b7a862b6982a307f60b'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro_Office.app.zip"
  appcast 'https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=300125739'
  name 'DEVONthink Pro Office'
  homepage 'https://www.devontechnologies.com/apps/devonthink'

  auto_updates true

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/3838
  app 'DEVONthink Pro.app', target: 'DEVONthink Pro Office.app'
end
