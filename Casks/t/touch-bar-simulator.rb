cask "touch-bar-simulator" do
  on_high_sierra :or_older do
    version "1.2.0"
    sha256 "4abe55de716ae56a41031cdb1d3b27bf6b1efae18b33b80bb0419669a9a76aa1"

    url "https://github.com/sindresorhus/touch-bar-simulator/releases/download/v#{version}/Touch-Bar-Simulator-#{version}.dmg"
  end
  on_mojave do
    version "3.2.0"
    sha256 "bdfaf740392bddb3e9b281a30efab27e03638d3428ba555650dca517153c13c6"

    url "https://github.com/sindresorhus/touch-bar-simulator/releases/download/v#{version}/Touch.Bar.Simulator.#{version}.dmg"
  end
  on_catalina :or_newer do
    version "4.2.0"
    sha256 "7af139d541a8d2875d76aa46ef4074496d07ef49d2aec27467d8879aac903d43"

    url "https://github.com/sindresorhus/touch-bar-simulator/releases/download/v#{version}/Touch.Bar.Simulator.#{version}.dmg"
  end

  name "Touch Bar Simulator"
  desc "Touch Bar as a standalone app"
  homepage "https://github.com/sindresorhus/touch-bar-simulator"

  deprecate! date: "2024-05-14", because: :discontinued
  disable! date: "2025-05-15", because: :discontinued

  depends_on macos: ">= :sierra"

  app "Touch Bar Simulator.app"

  zap trash: [
    "~/Library/Caches/com.sindresorhus.Touch-Bar-Simulator",
    "~/Library/Cookies/com.sindresorhus.Touch-Bar-Simulator.binarycookies",
    "~/Library/Preferences/com.sindresorhus.Touch-Bar-Simulator.plist",
  ]
end
