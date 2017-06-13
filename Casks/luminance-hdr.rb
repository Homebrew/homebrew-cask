cask 'luminance-hdr' do
  version '2.5.1'
  sha256 '6edefd0e7342ae59eb02bd809eef379f2f25af355ef9ed63394c7a1fa7424b45'

  url "https://downloads.sourceforge.net/qtpfsgui/Luminance_HDR_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qtpfsgui/rss',
          checkpoint: '6296e73a0733f04360dc725ece14c3de282b192ae40787485f18810d867019f1'
  name 'Luminance HDR'
  homepage 'http://qtpfsgui.sourceforge.net/'

  app "Luminance HDR #{version}.app"

  zap delete: [
                '~/Library/Preferences/com.luminance-hdr.plist',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luminance-hdr.sfl',
              ]
end
