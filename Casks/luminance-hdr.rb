cask 'luminance-hdr' do
  version '2.4.0'
  sha256 '8b97a9bf902aba0249091a70637df5f6040cdc25f9522aaa25bbb73aa9e297b9'

  url "https://downloads.sourceforge.net/qtpfsgui/Luminance%20HDR%20#{version}-MacOSX-10.8.dmg"
  appcast 'https://sourceforge.net/projects/qtpfsgui/rss',
          checkpoint: 'e122e7df8e1e6e9f350b1761fbab524e9cd43d3829c4f965281cbbc85299b858'
  name 'Luminance HDR'
  homepage 'http://qtpfsgui.sourceforge.net/'

  app "Luminance HDR #{version}.app"

  zap delete: [
                '~/Library/Preferences/com.luminance-hdr.plist',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luminance-hdr.sfl',
              ]
end
