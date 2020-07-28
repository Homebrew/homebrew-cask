cask "sketchup" do
  version "2017,3-116-90851"
  sha256 "a534d77d1ea9622b19463258abf21768cb8bb8126734bd40329dd4088b04d79f"

  # downloads can be found at https://www.sketchup.com/download/all
  # dl.trimble.com/sketchup/ was verified as official when first introduced to the cask
  url "https://www.sketchup.com/sketchup/#{version.before_comma}/en/sketchupmake-#{version.before_comma}-#{version.after_comma}-en-dmg"
  name "SketchUp"
  homepage "https://www.sketchup.com/"

  suite "SketchUp #{version.before_comma}"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.sketchup.#{version.before_comma}.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.stylebuilder.#{version.before_comma}.sfl*",
    "~/Library/Application Support/SketchUp #{version.before_comma}",
    "~/Library/Application Support/Trimble Connect for SketchUp",
    "~/Library/Caches/com.sketchup.SketchUp.#{version.before_comma}",
    "~/Library/Cookies/com.sketchup.SketchUp.#{version.before_comma}.binarycookies",
    "~/Library/Preferences/com.sketchup.SketchUp.#{version.before_comma}.plist",
    "~/Library/Preferences/com.sketchup.SketchUp.#{version.before_comma}.plist",
    "~/Library/Preferences/Trimble.SketchUp-Helper.plist",
  ]
end
