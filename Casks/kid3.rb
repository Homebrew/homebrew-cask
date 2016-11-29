cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.4.3'
  sha256 'ca36e6fea2e94bdce05c975104a1522270df10e0ef86a7533aad40ab85e9b174'

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/kid3/rss',
          checkpoint: '6f52b52de4f5db962effe8341ed4430a2e68adf87668442dcc5eb16b1cce65e0'
  name 'Kid3'
  homepage 'http://kid3.sourceforge.net/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
