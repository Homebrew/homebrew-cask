cask "sketchup" do
  version "2017,3-116-90851"
  sha256 "a534d77d1ea9622b19463258abf21768cb8bb8126734bd40329dd4088b04d79f"

  # downloads can be found at https://www.sketchup.com/download/all
  url "https://www.sketchup.com/sketchup/#{version.csv.first}/en/sketchupmake-#{version.csv.first}-#{version.csv.second}-en-dmg"
  name "SketchUp"
  name "SketchUp Make"
  desc "3D design software"
  homepage "https://www.sketchup.com/"

  suite "SketchUp #{version.csv.first}"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.sketchup.#{version.csv.first}.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sketchup.stylebuilder.#{version.csv.first}.sfl*",
    "~/Library/Application Support/SketchUp #{version.csv.first}",
    "~/Library/Application Support/Trimble Connect for SketchUp",
    "~/Library/Caches/com.sketchup.SketchUp.#{version.csv.first}",
    "~/Library/Cookies/com.sketchup.SketchUp.#{version.csv.first}.binarycookies",
    "~/Library/Preferences/com.sketchup.SketchUp.#{version.csv.first}.plist",
    "~/Library/Preferences/com.sketchup.SketchUp.#{version.csv.first}.plist",
    "~/Library/Preferences/Trimble.SketchUp-Helper.plist",
  ]

  caveats do
    discontinued
  end
end
