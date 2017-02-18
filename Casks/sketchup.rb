cask 'sketchup' do
  version '2017'
  sha256 '9a515fac2a3a4c0d32c90c2570e887395ae5c79511310d183624f24a6e436efa'

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
