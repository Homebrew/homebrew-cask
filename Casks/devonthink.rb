cask 'devonthink' do
  version '2.9.5'
  sha256 '445e1931d00f99e753c726c14cf1b4083e4edfba76c26828fe352da838fe3822'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: '94b758c197bd1b98fed3c09e5564395b7512cf604b683cc44af453c3b9ba647c'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
