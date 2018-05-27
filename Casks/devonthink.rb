cask 'devonthink' do
  version '2.10'
  sha256 '43c9e2cbef1ae8e8e52d97b54be28b5ce019eaf2615db4921e9736b22c72d4c4'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'https://www.devontechnologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: 'def80fee3b439b2fe71185f3bc35f27aaf0e0987bbd641ba0b34c257720d96ed'
  name 'DEVONthink Personal'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'DEVONthink.app'
end
