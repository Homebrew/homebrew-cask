cask "clocker" do
  version "20.10.03,5613815"
  sha256 "27692bbfafb74d0c9f85a7e7bfae53708831900e59eb9ac35681dbebf4bce3c4"

  url "https://github.com/n0shake/Clocker/files/#{version.after_comma}/Clocker.app.zip",
      verified: "github.com/n0shake/Clocker/"
  name "Clocker"
  desc "Track timezones from your menubar"
  homepage "https://abhishekbanthia.com/clocker"

  livecheck do
    url "https://github.com/n0shake/Clocker/releases/latest"
    strategy :page_match do |page|
      v = page[%r{href=.*?/tag/(\d+(?:\.\d+)*)}i, 1]
      id = page[%r{href=.*?/(\d+)/Clocker\.app\.zip}i, 1]
      "#{v},#{id}"
    end
  end

  app "Clocker.app"

  uninstall launchctl: "com.abhishek.ClockerHelper",
            quit:      "com.abhishek.Clocker"

  zap trash: [
    "~/Library/Application Scripts/com.abhishek.Clocker",
    "~/Library/Containers/com.abhishek.Clocker",
    "~/Library/Preferences/com.abhishek.Clocker.plist",
    "~/Library/Preferences/com.abhishek.ClockerHelper.plist",
    "~/Library/Preferences/com.abhishek.Clocker.prefs",
  ]
end
