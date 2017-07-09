cask 'devonthink-pro-office' do
  version '2.9.13'
  sha256 '3e1f59bd0f33b2e5e0d5101c348e0cee4913b51db17ed0a2ce9e1035abe653c6'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro_Office.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300125739&format=xml',
          checkpoint: '78ca4b98e002d224b4a61b756441243c3c012f520b4eece8153908c1dad2c4ac'
  name 'DEVONthink Pro Office'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-pro-office.html'

  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3838
  app 'DEVONthink Pro.app', target: 'DEVONthink Pro Office.app'
end
