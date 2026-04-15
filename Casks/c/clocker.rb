cask "clocker" do
  version "26.07"
  sha256 "1a24725dd51d36b28b9d64b0bd9befd2bafe33d795616f55d6903601cd0a3e20"

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
