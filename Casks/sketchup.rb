cask 'sketchup' do
  version :latest
  sha256 :no_check

  # downloads can be found at https://www.sketchup.com/download/all
  # dl.trimble.com/sketchup was verified as official when first introduced to the cask
  url 'https://dl.trimble.com/sketchup/SketchUpMake-en.dmg'
  name 'SketchUp'
  homepage 'https://www.sketchup.com/'

  suite 'SketchUp 2016'

  zap delete: [
                '~/Library/Application Support/SketchUp 2016',
                '~/Library/Caches/com.sketchup.SketchUp.2016',
                '~/Library/Application Support/Trimble Connect for SketchUp',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.sketchup.2016.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.stylebuilder.2016.sfl',
                '~/Library/Cookies/com.sketchup.SketchUp.2016.binarycookies',
                '~/Library/Preferences/com.sketchup.SketchUp.2016.plist',
              ]
end
