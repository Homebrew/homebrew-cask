cask 'devonthink' do
  version '3.0.3'
  sha256 'e34cba7acf37df73f04a69d21e16c6af81d38c9f3d51d44ad46692ec1747f5dd'

  # s3.amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_#{version.major}.dmg.zip"
  appcast "https://www.devontechnologies.com/Sparkle/DEVONthink#{version.major}.xml"
  name 'DEVONthink'
  homepage 'https://www.devontechnologies.com/apps/devonthink/'

  auto_updates true

  app "DEVONthink #{version.major}.app"
end
