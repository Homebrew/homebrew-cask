cask "alfred" do
  version "4.3.3,1226"
  sha256 "a3a2d6a716a67eef17e0a7d12a43a5ea8d5f8a341d1d70bf36bf619343232018"

  url "https://cachefly.alfredapp.com/Alfred_#{version.before_comma}_#{version.after_comma}.dmg"
  name "Alfred"
  desc "Application launcher and productivity software"
  homepage "https://www.alfredapp.com/"

  livecheck do
    url "https://www.alfredapp.com/app/update#{version.major}/general.xml"
    strategy :page_match do |page|
      match = page.match(/Alfred_(\d(?:\.\d+)*)_(\d+)\.tar\.gz/i)
      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "Alfred #{version.major}.app"

  uninstall quit: "com.runningwithcrayons.Alfred"

  zap trash: [
    "~/Library/Application Support/Alfred",
    "~/Library/Caches/com.runningwithcrayons.Alfred",
    "~/Library/Cookies/com.runningwithcrayons.Alfred.binarycookies",
    "~/Library/Preferences/com.runningwithcrayons.Alfred.plist",
    "~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist",
    "~/Library/Saved Application State/com.runningwithcrayons.Alfred-Preferences.savedState",
  ]
end
