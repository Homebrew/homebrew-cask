cask "time-left" do
  version "1.2"
  sha256 "48d6d0111958be8d6b4f8e188a6d8e85e1519e0c71ded6fe198ce9db6c6226cc"

  url "https://github.com/sabuz796/time-left/releases/download/v#{version}/TimeLeft.dmg"
  name "Time Left"
  desc "Menu bar countdown showing time left in the day, week, month, and year"
  homepage "https://github.com/sabuz796/time-left"

  depends_on macos: :ventura

  app "TimeLeft.app"

  zap trash: "~/Library/Preferences/com.timeleft.app.plist"

  caveats <<~EOS
    On first launch macOS may report the app is from an unidentified developer.
    Clear the quarantine flag once, then open it:

      xattr -d com.apple.quarantine /Applications/TimeLeft.app
  EOS
end
