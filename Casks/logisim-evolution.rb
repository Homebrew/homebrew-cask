cask "logisim-evolution" do
  version "3.7.2"
  sha256 "e94ba07fa606c927e6ec68c6d276cd6decb5988f00639f36a6507e847a7c3342"

  url "https://github.com/logisim-evolution/logisim-evolution/releases/download/v#{version}/Logisim-evolution-#{version}.dmg"
  name "Logisim Evolution"
  desc "Digital logic designer and simulator"
  homepage "https://github.com/logisim-evolution/logisim-evolution"

  app "Logisim-evolution.app"

  zap trash: "~/Library/Preferences/com.cburch.logisim.plist"
end
