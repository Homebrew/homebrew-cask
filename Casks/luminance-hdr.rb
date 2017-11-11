cask 'luminance-hdr' do
  version '2.5.1_1'
  sha256 'be4ae6c1110bbac4fd57358e1a0489871ba143f4f295a6d07f95be9aaecb4d18'

  url "https://downloads.sourceforge.net/qtpfsgui/Luminance_HDR_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qtpfsgui/rss',
          checkpoint: '3ecae87283d3f01c31c1905d25cf0320518d9947577af0d2f3edc3ac8d89ded2'
  name 'Luminance HDR'
  homepage 'http://qtpfsgui.sourceforge.net/'

  app "Luminance HDR #{version}.app"

  zap delete: [
                '~/Library/Preferences/com.luminance-hdr.plist',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luminance-hdr.sfl*',
              ]
end
