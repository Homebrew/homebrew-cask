cask 'devonthink' do
  version '3.0.1'
  sha256 'f6333d0e62884765b30f80dfe9a6e02b02c48bc7b6f10914aca4595cb0eb7608'

  # s3.amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_#{version.major}.dmg.zip"
  appcast 'https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=217255'
  name 'DEVONthink'
  homepage 'https://www.devontechnologies.com/apps/devonthink/'

  auto_updates true

  app "DEVONthink #{version.major}.app"
end
