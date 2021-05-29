cask "logisim-evolution" do
  version "3.5.0"
  sha256 "3cabd296b78457a7a9727ef66b1ba706ec4e4beccbbc28519fcc2e591fa9d1e4"

  url "https://github.com/reds-heig/logisim-evolution/releases/download/v#{version}/logisim-evolution-#{version}-all.jar"
  name "Logisim Evolution"
  desc "Digital logic designer and simulator"
  homepage "https://github.com/reds-heig/logisim-evolution"

  livecheck do
    url :url
    strategy :github_latest
  end

  container type: :naked

  app "logisim-evolution-#{version}-all.jar", target: "logisim-evolution.jar"

  zap trash: "~/Library/Preferences/com.cburch.logisim.plist"

  caveats do
    depends_on_java "9+"
  end
end
