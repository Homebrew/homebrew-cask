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
               '~/Library/Application Scripts/com.devon-technologies.*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.devon-technologies.think*.sfl2',
               '~/Library/Application Support/DEVONthink*',
               '~/Library/Caches/com.apple.helpd/Generated/com.devontechnologies.devonthink.help*',
               '~/Library/Caches/com.devon-technologies.think*',
               '~/Library/Containers/com.devon-technologies.*',
               '~/Library/Cookies/com.devon-technologies.think*.binarycookies',
               '~/Library/Group Containers/*.devon-technologies.*',
               '~/Library/Group Containers/*.think*',
               '~/Library/Metadata/com.devon-technologies.think*',
               '~/Library/Preferences/com.devon-technologies.think*',
               '~/Library/Saved Application State/com.devon-technologies.think*.savedState',
               '~/Library/Scripts/Applications/DEVONagent',
               '~/Library/Scripts/Folder Action Scripts/DEVONthink*',
               '~/Library/WebKit/com.devon-technologies.think*',
             ]
end
