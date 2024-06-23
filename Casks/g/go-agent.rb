cask "go-agent" do
  arch arm: "-aarch64"

  version "24.2.0,19076"
  sha256 arm:   "2303bd6ac1bef11549987d0f1e2610881958e00cb035febd404ccc6dc8ef31aa",
         intel: "fe583fbddaea1e4535dd926bb1c896fb021a522a5872a19a56104bfb0bb50a6a"

  url "https://download.gocd.org/binaries/#{version.csv.first}-#{version.csv.second}/osx/go-agent-#{version.csv.first}-#{version.csv.second}-osx#{arch}.zip"
  name "Go Agent"
  name "GoCD Agent"
  desc "Agent for the Go Continuous Delivery platform"
  homepage "https://www.gocd.org/"

  livecheck do
    url "https://download.gocd.org/releases.json"
    regex(/go[._-]agent[._-]v?(\d+(?:\.\d+)+)[._-](\d+)[._-]osx\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  binary "go-agent-#{version.csv.first}/bin/go-agent"

  # No zap stanza required
end
