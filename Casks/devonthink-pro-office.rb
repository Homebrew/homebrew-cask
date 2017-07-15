cask 'devonthink-pro-office' do
  version '2.9.14'
  sha256 'fd425a5beb6e179bac7f61ad1b0564de358991a7d571d64a989e26e7b52b06e1'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro_Office.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300125739&format=xml',
          checkpoint: '7f6d6c712da496696fbac9e0fc2dcc210e0b45134b1bd69c3ce107ae2b1ab786'
  name 'DEVONthink Pro Office'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-pro-office.html'

  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3838
  app 'DEVONthink Pro.app', target: 'DEVONthink Pro Office.app'
end
