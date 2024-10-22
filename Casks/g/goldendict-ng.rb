cask "goldendict-ng" do
  version "24.09.0"
  sha256 "4ecfd5e22eb8347075b079df5370a0b81ab879b1a3b39fbfa7fe60e0a60d6aca"

  url "https://github.com/xiaoyifang/goldendict-ng/releases/download/v#{version}-Release.316ec900/GoldenDict-ng-#{version}-Qt6.6.3-macOS-arm64.dmg"
  name "goldendict-ng"
  desc "Next Generation GoldenDict"
  homepage "https://github.com/xiaoyifang/goldendict-ng"

  depends_on macos: ">= :catalina"

  app "goldendict-ng.app"
  binary "#{appdir}/goldendict-ng.app/Contents/MacOS/goldendict-ng"

  zap trash: [
     "~/Library/Application Support/goldendict-ng",
     "~/Library/Preferences/com.goldendict-ng.plist",
     "~/Library/Saved Application State/com.goldendict-ng.savedState",
    "~/.goldendict-ng",
  ]
end
