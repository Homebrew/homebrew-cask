cask 'mp3tag' do
  version '2.89a'
  sha256 '5f2551c900dfd16020b0b4fd7d346187b9dc5112fbb58e33f470b6876222d32f'

  url "http://download.mp3tag.de/mp3tagv#{version.no_dots}-macOS-Wine.zip"
  name 'MP3TAG'
  homepage 'http://www.mp3tag.de/en/'

  app "mp3tagv#{version.no_dots}-macOS-Wine/Mp3tag.app"

  zap trash: [
               '~/Library/Application Support/de.mp3tag.Mp3tag_*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.mp3tag.mp3tag_*.sfl*',
               '~/Library/Preferences/org.kronenberg.Winetricks.plist',
             ]
end
