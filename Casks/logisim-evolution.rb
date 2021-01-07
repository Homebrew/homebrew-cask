cask "logisim-evolution" do
  version "3.4.0"
  sha256 "21b23b27b10460763c76ae63b34cfde5abf77c0900683aaee248267475e9879e"

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
