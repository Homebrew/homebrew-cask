cask "logisim-evolution" do
  version "3.4.2"
  sha256 "60a8419119fc527c28ee9b383fc982772e4c7036dd515f75471153e87d7e7f76"

  url "https://github.com/reds-heig/logisim-evolution/releases/download/v#{version}/logisim-evolution-#{version}-all.jar"
  appcast "https://github.com/reds-heig/logisim-evolution/releases.atom"
  name "Logisim Evolution"
  desc "Digital logic designer and simulator"
  homepage "https://github.com/reds-heig/logisim-evolution"

  container type: :naked

  app "logisim-evolution-#{version}-all.jar", target: "logisim-evolution.jar"

  zap trash: "~/Library/Preferences/com.cburch.logisim.plist"

  caveats do
    depends_on_java "9+"
  end
end
