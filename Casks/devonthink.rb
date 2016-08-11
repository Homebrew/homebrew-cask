cask 'devonthink' do
  version '2.9.1'
  sha256 '466173a23136d03d6ba82284823b1eb5edd23f77d8a77cf85917f0791c157bda'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: 'cc69552454cb48c939c0fff0d3f82b77ce9686cdb2d6d9cc8fcf7467d8bce88b'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
