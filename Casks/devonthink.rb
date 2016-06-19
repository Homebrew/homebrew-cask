cask 'devonthink' do
  version '2.8.11'
  sha256 '1a78fd9a6211b18d71f06ab6fc659ed35d0a519a80c359a88608c3c5e9bea35e'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: 'e096695fe4ea22fa32fa8385fdb134a908d8af28076ed310a1600de7cb39dcc4'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
