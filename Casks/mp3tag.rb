cask 'mp3tag' do
  version '2.90a'
  sha256 '23b02aea4220e1c4e8723df8372ea0be8624173f489a9a3e665bc49961cdc4b9'

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
