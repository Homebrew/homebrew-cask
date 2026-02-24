cask "quickdown" do
  version "0.4.0"
  sha256 "1d8985324b525864f682fdc7042791141f77606640a2e7385c25835267649c8d"

  url "https://github.com/tennyson-mccalla/QuickDown/releases/download/v#{version}/QuickDown.dmg"
  name "QuickDown"
  desc "Fast, native Markdown previewer with QuickLook integration"
  homepage "https://github.com/tennyson-mccalla/QuickDown"

  app "QuickDown.app"

  zap trash: "~/Library/Preferences/com.tennyson.QuickDown.plist"
end
