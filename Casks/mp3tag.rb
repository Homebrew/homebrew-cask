cask 'mp3tag' do
  version '2.94'
  sha256 'f51cc68ba8f73c8d3ba31055f555dc6481907eed19cbe8586ba0f32eedc88fa3'

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
