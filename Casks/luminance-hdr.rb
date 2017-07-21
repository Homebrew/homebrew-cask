cask 'luminance-hdr' do
  version '2.5.1_1'
  sha256 'be4ae6c1110bbac4fd57358e1a0489871ba143f4f295a6d07f95be9aaecb4d18'

  url "https://downloads.sourceforge.net/qtpfsgui/Luminance_HDR_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/qtpfsgui/rss',
          checkpoint: 'ba334f17992a87cd3126b40338693e564c4d16bf568ba78ec77d1fac517130bc'
  name 'Luminance HDR'
  homepage 'http://qtpfsgui.sourceforge.net/'

  app "Luminance HDR #{version}.app"

  zap delete: [
                '~/Library/Preferences/com.luminance-hdr.plist',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luminance-hdr.sfl',
              ]
end
