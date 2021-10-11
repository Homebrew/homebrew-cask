cask "logisim-evolution" do
  version "3.6.1"
  sha256 "1b38fb8d2f21fc06e0b0cdc1b6a576b46ad52e9173d0f9adb7343df2ba577fc7"

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
