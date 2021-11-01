cask "logisim-evolution" do
  version "3.7.1"
  sha256 "20a86beaca3133d3c892e5684b324417f205a4b598eab0828ee1255023378650"

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
