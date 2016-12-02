cask 'devonthink' do
  version '2.9.8'
  sha256 '5c0038ce7088c0c83e3b33cabbaa7dc531904c9df1ccd5ced9ecc21e791f5ed2'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: '9c97727f49709539237dcf00bc520b13acbe9175a5c04b6273dfb183b30add21'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
