cask 'sketchup' do
  version '2017'
  sha256 'a61e7e55b42e8d2e4735c4e45f0d53435c8dfd4f6aaca7187b4f945a58acc858'

  # downloads can be found at https://www.sketchup.com/download/all
  # dl.trimble.com/sketchup was verified as official when first introduced to the cask
  url 'https://dl.trimble.com/sketchup/SketchUpMake-en.dmg'
  name 'SketchUp'
  homepage 'http://www.sketchup.com/'

  suite "SketchUp #{version}"

  zap delete: [
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.sketchup.#{version}.sfl",
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.stylebuilder.#{version}.sfl",
                "~/Library/Application Support/SketchUp #{version}",
                "~/Library/Caches/com.sketchup.SketchUp.#{version}",
                "~/Library/Cookies/com.sketchup.SketchUp.#{version}.binarycookies",
                "~/Library/Preferences/com.sketchup.SketchUp.#{version}.plist",
                "~/Library/Preferences/com.sketchup.SketchUp.#{version}.plist",
                '~/Library/Preferences/Trimble.SketchUp-Helper.plist',
              ]
end
