cask 'luminance-hdr' do
  version '2.5.1_1'
  sha256 'be4ae6c1110bbac4fd57358e1a0489871ba143f4f295a6d07f95be9aaecb4d18'

  url "https://downloads.sourceforge.net/qtpfsgui/Luminance_HDR_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qtpfsgui/rss'
  name 'Luminance HDR'
  homepage 'http://qtpfsgui.sourceforge.net/'

  app "Luminance HDR #{version.major_minor_patch}.app"

  zap trash: [
               '~/Library/Preferences/com.luminance-hdr.plist',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luminance-hdr.sfl*',
             ]
end
