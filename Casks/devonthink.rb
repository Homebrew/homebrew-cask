cask 'devonthink' do
  version '2.9.3'
  sha256 '9c102512ce0999230bccaf3fe2aafa9ece1a2894a16e43aa9b4f447166da50cc'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: '1efc900e95fa29f796aa751e6061082f6efb0c1b175ff779002d3c30237e4498'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
