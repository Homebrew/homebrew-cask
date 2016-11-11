cask 'devonthink-pro-office' do
  version '2.9.7'
  sha256 'a774bcdc293331baeaf7cbbab694197ca5faa4c20ced5625aedfe326109c29fa'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro_Office.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300125739&format=xml',
          checkpoint: 'c57d6a31bb72ad29c4335d9c432e417591a5020e0b52118427fad669eac20090'
  name 'DEVONthink Pro Office'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro-office.html'

  depends_on macos: '>= :mountain_lion'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3838
  app 'DEVONthink Pro.app', target: 'DEVONthink Pro Office.app'
end
