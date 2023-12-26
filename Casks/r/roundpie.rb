cask "roundpie" do
  version "1.5.1558"
  sha256 "21afc76f03495933a7f75e5969d5d01f735611a892005f85750b9515c53d45ef"

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
