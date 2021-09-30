cask "logisim-evolution" do
  version "3.6.0"
  sha256 "35196d7d6293858bc37a449264f0b076340a9c6e84ce38704cbcbf784c28daf6"

  url "https://github.com/reds-heig/logisim-evolution/releases/download/v#{version}/Logisim-evolution-#{version}.dmg"
  name "Logisim Evolution"
  desc "Digital logic designer and simulator"
  homepage "https://github.com/reds-heig/logisim-evolution"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Logisim-evolution.app"

  zap trash: "~/Library/Preferences/com.cburch.logisim.plist"
end
