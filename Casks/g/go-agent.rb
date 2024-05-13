cask "go-agent" do
  arch arm: "-aarch64"

  version "24.1.0,18867"
  sha256 arm:   "aaa95bcbc7c26b6d1746e700d10d46671a15ccf7587c8968e9c302d8f207811b",
         intel: "2a978a8e9ff7c6ad11b1a5d58b0b32025c3e0d86e8b752d13f368e94103aae4d"

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
