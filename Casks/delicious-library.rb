cask 'delicious-library' do
  version '3.9'
  sha256 '6b13093e40164d376f5b29f196406014b06761b4d4d2b5cc2dffc5bc2e48fc27'

  url "https://delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast "https://www.delicious-monster.com/downloads/DeliciousLibrary#{version.major}.xml"
  name 'Delicious Library'
  homepage 'https://delicious-monster.com/'

  app "Delicious Library #{version.major}.app"

  zap trash: [
               '~/Library/Application Scripts/com.delicious-monster.library*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.delicious-monster.library*.sfl2',
               '~/Library/Containers/com.delicious-monster.library*',
             ]
end
