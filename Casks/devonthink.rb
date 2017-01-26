cask 'devonthink' do
  version '2.9.9'
  sha256 '9b4d79d4b1b03669fc29f6c8f362fdac9ef4e0ecb279cd5ff74de851ae0a1b7a'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: '26fd05eb4a3633c0f887be19532c05eaf9147796f3edbbaab91df0f0fb3d6669'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
