cask 'luminance-hdr' do
  version '2.5.1'
  sha256 '6edefd0e7342ae59eb02bd809eef379f2f25af355ef9ed63394c7a1fa7424b45'

  url "https://downloads.sourceforge.net/qtpfsgui/Luminance_HDR_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qtpfsgui/rss',
          checkpoint: 'bf34873072f3b12322ee98cc2131ad6e24280692246713e9f37857c3c6d0511b'
  name 'Luminance HDR'
  homepage 'http://qtpfsgui.sourceforge.net/'

  app "Luminance HDR #{version}.app"

  zap delete: [
                '~/Library/Preferences/com.luminance-hdr.plist',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luminance-hdr.sfl',
              ]
end
