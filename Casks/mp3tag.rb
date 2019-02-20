cask 'mp3tag' do
  version '2.93'
  sha256 '04eb5c35db9f60e2be418ffa8e8c3fcbff1d39df1e310a6b97387ab64c895a8e'

  url "https://download.mp3tag.de/mp3tagv#{version.no_dots}-macOS-Wine.zip"
  appcast 'https://www.mp3tag.de/en/mac-osx.html'
  name 'MP3TAG'
  homepage 'https://www.mp3tag.de/en/'

  app "mp3tagv#{version.no_dots}-macOS-Wine/Mp3tag.app"

  zap trash: [
               '~/Library/Application Support/de.mp3tag.Mp3tag_*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.mp3tag.mp3tag_*.sfl*',
               '~/Library/Caches/org.kronenberg.Winetricks',
               '~/Library/Preferences/org.kronenberg.Winetricks.plist',
             ]
end
