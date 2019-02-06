cask 'devonthink' do
  version '2.11.2'
  sha256 'd1ba068f0830e85457eedcf53f8c6843182fc3446d5de27b6f3cff8c2204ebfd'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'https://www.devontechnologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml'
  name 'DEVONthink Personal'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'DEVONthink.app'
end
