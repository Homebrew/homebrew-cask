cask "go-agent" do
  arch arm: "-aarch64"

  version "23.4.0,17731"
  sha256 arm:   "25ff5342a9788bb722e8f03d741f6da5cdd262690d3df6f064e51cfbdacc31e2",
         intel: "b815663c7d59eefe9494b2bd6da7709318957c77c66f82f594329822cfc909f3"

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
