cask "logisim-evolution" do
  version "3.4.1"
  sha256 "1b72dd3397290b7be95f886b933bd37a2d9182b8d33247fa5f059d0867e8111c"

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
