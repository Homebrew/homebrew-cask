cask "clocker" do
  version "26.04"
  sha256 "f58fd683d6f5a72e1e685423b002b23b2491960b1886f7aed00fca29265b7346"

  url "https://github.com/n0shake/Clocker/releases/download/v#{version}/Clocker.zip",
      verified: "github.com/n0shake/Clocker/"
  name "Clocker"
  desc "Menu bar timezone tracker and compact calendar"
  homepage "https://abhishekbanthia.com/clocker"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Clocker.app"

  uninstall launchctl: "com.abhishek.ClockerHelper",
            quit:      "com.abhishek.Clocker"

  zap trash: [
    "~/Library/Application Scripts/com.abhishek.Clocker",
    "~/Library/Containers/com.abhishek.Clocker",
    "~/Library/Preferences/com.abhishek.Clocker.plist",
    "~/Library/Preferences/com.abhishek.Clocker.prefs",
    "~/Library/Preferences/com.abhishek.ClockerHelper.plist",
  ]
end
