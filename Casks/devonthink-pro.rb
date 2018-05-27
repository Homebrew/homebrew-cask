cask 'devonthink-pro' do
  version '2.10'
  sha256 '556157e6e7429e6e35adb3cf17cb8226e3aef6c7069ceaee4591e2b1802f55d0'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: 'b6630fd869747c404c19d94d9e2057c20eb47d4c93abe18268210542ca4ab8f3'
  name 'DEVONthink Pro'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'DEVONthink Pro.app'
end
