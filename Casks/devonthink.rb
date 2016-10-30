cask 'devonthink' do
  version '2.9.6'
  sha256 '91f482f87f52e24fb0f56725c1fef8296f5293cc9d341d1082a4d5686de2afc9'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: '489254857e55a860ab6d9da9db145404ea6d2153a0521479f275f1585a76c187'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
