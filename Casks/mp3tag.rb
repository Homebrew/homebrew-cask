cask 'mp3tag' do
  version '2.90'
  sha256 'ce2bb85b84b610d3d8679987c562decf72a46b8e8218feee510e8c43b78adaf7'

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
