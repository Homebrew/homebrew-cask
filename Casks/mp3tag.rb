cask 'mp3tag' do
  version '2.91'
  sha256 '5f7e3f6e72695b5dd0b9486a9f2423d821cfcf88ed7aa4dab257d2bd2d7b543a'

  url "https://download.mp3tag.de/mp3tagv#{version.no_dots}-macOS-Wine.zip"
  name 'MP3TAG'
  homepage 'https://www.mp3tag.de/en/'

  app "mp3tagv#{version.no_dots}-macOS-Wine/Mp3tag.app"

  zap trash: [
               '~/Library/Application Support/de.mp3tag.Mp3tag_*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.mp3tag.mp3tag_*.sfl*',
               '~/Library/Preferences/org.kronenberg.Winetricks.plist',
             ]
end
