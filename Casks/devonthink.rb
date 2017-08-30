cask 'devonthink' do
  version '2.9.15'
  sha256 '3d2383c7a2f634e2a2726c85bd002f420de90e230ebf4a63e46b1f2baf744e7b'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: '2cbb09a07a917effa2fbafe8f9459718c4191cdf5590c638cb1db737824f5121'
  name 'DEVONthink Personal'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
