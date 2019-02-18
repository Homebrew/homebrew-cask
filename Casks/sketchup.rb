cask 'sketchup' do
  version '2019,19.0.684'
  sha256 '2b6256d90db763cb4ba9b2cfa0823373bc48401004249a6580094b2bf8f57294'

  url 'https://www.sketchup.com/sketchup/SketchUpPro-en-dmg'
  name 'SketchUp'
  homepage 'https://www.sketchup.com/'

  suite "SketchUp #{version.before_comma}"

  zap trash: [
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.sketchup.#{version.before_comma}.sfl*",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.stylebuilder.#{version.before_comma}.sfl*",
               "~/Library/Application Support/SketchUp #{version.before_comma}",
               "~/Library/Caches/com.sketchup.SketchUp.#{version.before_comma}",
               "~/Library/Cookies/com.sketchup.SketchUp.#{version.before_comma}.binarycookies",
               "~/Library/Preferences/com.sketchup.SketchUp.#{version.before_comma}.plist",
               "~/Library/Preferences/com.sketchup.SketchUp.#{version.before_comma}.plist",
               '~/Library/Preferences/Trimble.SketchUp-Helper.plist',
             ]
end
