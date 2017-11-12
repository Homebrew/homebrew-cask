cask 'sketchup' do
  version '2017'
  sha256 'a534d77d1ea9622b19463258abf21768cb8bb8126734bd40329dd4088b04d79f'

  # downloads can be found at https://www.sketchup.com/download/all
  # dl.trimble.com/sketchup was verified as official when first introduced to the cask
  url 'https://dl.trimble.com/sketchup/SketchUpMake-en.dmg'
  name 'SketchUp'
  homepage 'https://www.sketchup.com/'

  suite "SketchUp #{version}"

  zap delete: [
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.sketchup.#{version}.sfl*",
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.stylebuilder.#{version}.sfl*",
                "~/Library/Application Support/SketchUp #{version}",
                "~/Library/Caches/com.sketchup.SketchUp.#{version}",
                "~/Library/Cookies/com.sketchup.SketchUp.#{version}.binarycookies",
                "~/Library/Preferences/com.sketchup.SketchUp.#{version}.plist",
                "~/Library/Preferences/com.sketchup.SketchUp.#{version}.plist",
                '~/Library/Preferences/Trimble.SketchUp-Helper.plist',
              ]
end
