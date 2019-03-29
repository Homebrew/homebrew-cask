cask 'devonthink-pro-office' do
  version '2.11.2'
  sha256 '083ae8094656229c72ddf76278837832ff471ee9c8485351142522c4f9a3d224'

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
