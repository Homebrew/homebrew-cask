cask "alfred" do
  version "4.6.5,1299"
  sha256 "2e40599ba17fd6beb36d2db405647b3e7a2e529f91b9d1383776d58b4b7ff5ac"

  url "https://cachefly.alfredapp.com/Alfred_#{version.csv.first}_#{version.csv.second}.dmg"
  name "Alfred"
  desc "Application launcher and productivity software"
  homepage "https://www.alfredapp.com/"

  livecheck do
    url "https://www.alfredapp.com/app/update#{version.major}/general.xml"
    strategy :page_match do |page|
      match = page.match(/Alfred[._-]v?(\d(?:\.\d+)+)[._-](\d+)\.tar\.gz/i)
      next if match.blank?

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
