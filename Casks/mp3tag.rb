cask 'mp3tag' do
  version '3.00'
  sha256 '6e627ee2f78968a137f8536aa3f720f9294aab1c5b93c86532bf95c8403b12ea'

  url "https://download.mp3tag.de/mp3tagv#{version.no_dots}-macOS-Wine.zip"
  appcast 'https://www.mp3tag.de/en/mac-osx.html'
  name 'MP3TAG'
  homepage 'https://www.mp3tag.de/en/'

  depends_on macos: '<= :mojave'

  app "mp3tagv#{version.no_dots}-macOS-Wine/Mp3tag.app"

  zap trash: [
               '~/Library/Application Support/de.mp3tag.Mp3tag_*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.mp3tag.mp3tag_*.sfl*',
               '~/Library/Caches/org.kronenberg.Winetricks',
               '~/Library/Preferences/org.kronenberg.Winetricks.plist',
             ]
end
