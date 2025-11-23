cask "touch-bar-simulator" do
  version "4.2.0"
  sha256 "7af139d541a8d2875d76aa46ef4074496d07ef49d2aec27467d8879aac903d43"

  url "https://github.com/sindresorhus/touch-bar-simulator/releases/download/v#{version}/Touch.Bar.Simulator.#{version}.dmg"
  name "Touch Bar Simulator"
  desc "Touch Bar as a standalone app"
  homepage "https://github.com/sindresorhus/touch-bar-simulator"

  deprecate! date: "2024-05-14", because: :discontinued
  disable! date: "2025-05-15", because: :discontinued

  app "Touch Bar Simulator.app"

  zap trash: [
    "~/Library/Caches/com.sindresorhus.Touch-Bar-Simulator",
    "~/Library/Cookies/com.sindresorhus.Touch-Bar-Simulator.binarycookies",
    "~/Library/Preferences/com.sindresorhus.Touch-Bar-Simulator.plist",
  ]
end
