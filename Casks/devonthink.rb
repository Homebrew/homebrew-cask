cask 'devonthink' do
  version '2.11.2'
  sha256 'd1ba068f0830e85457eedcf53f8c6843182fc3446d5de27b6f3cff8c2204ebfd'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=217255'
  name 'DEVONthink Personal'
  homepage 'https://www.devontechnologies.com/apps/devonthink/'

  auto_updates true

  app 'DEVONthink.app'
end
