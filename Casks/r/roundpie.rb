cask "roundpie" do
  version "1.5.1558"
  sha256 "4249b963e22f6d7bb53cb6071ee37a88eb36132d3b709d7899eedc67e04ae642"

  url "https://roundpie.app/installers/RoundPie-#{version}.dmg",
      verified: "roundpie.app/"
  name "RoundPie"
  desc "Pomodoro time tracker"
  homepage "https://theroundpie.com/"

  livecheck do
    url "https://pmdn.co/osx"
    strategy :header_match
  end

  app "RoundPie.app"

  zap trash: [
    "~/Library/Application Support/RoundPie",
    "~/Library/Logs/RoundPie",
    "~/Library/Preferences/com.atgalaikas.app.plist",
    "~/Library/Saved Application State/com.atgalaikas.app.savedState",
  ]
end
