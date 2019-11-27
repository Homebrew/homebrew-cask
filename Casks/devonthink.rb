cask 'devonthink' do
  version '3.0.2'
  sha256 '922ebe623aa7fb66c928a0e316de63ccae36a9bdb508e16077e6227aaca34db5'

  # s3.amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_#{version.major}.dmg.zip"
  appcast "https://www.devontechnologies.com/Sparkle/DEVONthink#{version.major}.xml"
  name 'DEVONthink'
  homepage 'https://www.devontechnologies.com/apps/devonthink/'

  auto_updates true

  app "DEVONthink #{version.major}.app"
end
