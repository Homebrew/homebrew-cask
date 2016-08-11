cask 'devonthink-pro-office' do
  version '2.9.2'
  sha256 'a33b06bc6f504c987f708e688fa8eb9fdf2c70150950558ee6b18a9f81a2a4bc'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro_Office.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300125739&format=xml',
          checkpoint: 'b210d90a515c3ccef2fd28d238f96792a764b6d72091af965df118f906995fd0'
  name 'DEVONthink Pro Office'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro-office.html'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3838
  app 'DEVONthink Pro.app', target: 'DEVONthink Pro Office.app'
end
