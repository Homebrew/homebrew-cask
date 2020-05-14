cask 'delicious-library' do
  version '3.9.1'
  sha256 'c306034b7f0915adc3b83689923913db88f0f0fbc9fe7a1c70d6814eab758193'

  url "https://www.delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast "https://www.delicious-monster.com/downloads/DeliciousLibrary#{version.major}.xml"
  name 'Delicious Library'
  homepage 'https://www.delicious-monster.com/'

  app "Delicious Library #{version.major}.app"

  zap trash: [
               '~/Library/Application Scripts/com.delicious-monster.library*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.delicious-monster.library*.sfl2',
               '~/Library/Containers/com.delicious-monster.library*',
             ]
end
