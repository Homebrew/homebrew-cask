cask 'devonthink' do
  version '2.9.10'
  sha256 '7f290e475a00cef898e768c08373f64a956f4050916c109e5460370eb3734caa'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: 'e99ea34791e20fd443982ee8c14eb1d9e65a722d3dac59726dd7929f2a0b46a8'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
