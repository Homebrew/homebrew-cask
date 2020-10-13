cask "logisim-evolution" do
  version "3.3.0"
  sha256 "55a9ed8069fd677b0caa9cccc39ce5f64be4d16293b4daddb8c54d2082f2a847"

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
