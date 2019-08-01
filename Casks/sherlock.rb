cask 'sherlock' do
  version '1.5.0'
  sha256 '429ae9abd216d657987acf0b91f502edaeb3d560dd93cef9d88f5310c5e30c7e'

  url 'https://sherlock.inspiredcode.io/download-dmg'
  appcast 'https://updates.devmate.com/io.inspiredcode.Sherlock.xml'
  name 'Sherlock'
  homepage 'https://sherlock.inspiredcode.io/'

  depends_on macos: '>= :sierra'

  app 'Sherlock.app'
end
