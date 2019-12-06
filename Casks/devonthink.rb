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

  zap trash: [
               '~/Library/Application Support/DEVONthink #{version.major}',
               '~/Library/Preferences/com.devon-technologies.think3.feeds.stylesheet.css',
               '~/Library/Preferences/com.devon-technologies.think#{version.major}.plist',
               '~/Library/Containers/com.devon-technologies.get',
               '~/Library/Containers/com.devon-technologies.think-helper',
               '~/Library/Containers/com.devon-technologies.think#{version.major}.clipper',
               '~/Library/Caches/com.apple.helpd/Generated/com.devontechnologies.devonthink.help*#{version}',
               '~/Library/Caches/com.devon-technologies.think#{version.major}',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.devon-technologies.think#{version.major}.sfl2',
             ]
end
