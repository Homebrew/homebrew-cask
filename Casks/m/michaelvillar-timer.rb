cask "michaelvillar-timer" do
  version "2.1.0"
  sha256 "e7bcb1c4e8e7b6be31b55cfeaa34d55aae2bc2e577f30cdf1718ab254418d140"

  url "https://github.com/michaelvillar/timer-app/releases/download/#{version}/Timer.app.zip"
  name "Timer"
  desc "Timer application"
  homepage "https://github.com/michaelvillar/timer-app"

  app "Timer.app"

  uninstall quit: "com.michaelvillar.Timer"

  zap trash: [
    "~/Library/Preferences/com.michaelvillar.Timer.plist",
    "~/Library/Saved Application State/com.michaelvillar.Timer.savedState",
  ]
end
