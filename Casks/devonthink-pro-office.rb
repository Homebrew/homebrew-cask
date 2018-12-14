cask 'devonthink-pro-office' do
  version '2.10.2'
  sha256 '9f086b0f65ede6fad1784c2e1b5e88cb01c25ef13ee78f4815904cdcc7e2d58f'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro_Office.app.zip"
  appcast 'https://www.devontechnologies.com/fileadmin/templates/filemaker/sparkle.php?product=300125739&format=xml'
  name 'DEVONthink Pro Office'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-pro-office.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/3838
  app 'DEVONthink Pro.app', target: 'DEVONthink Pro Office.app'
end
