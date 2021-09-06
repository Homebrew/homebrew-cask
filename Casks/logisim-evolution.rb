cask "logisim-evolution" do
  version "3.5.0"
  sha256 "feea8b0c11c03e08a2bd4cb5def08bb0fb5e3bc494ac178b3e210559b63848d5"

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
