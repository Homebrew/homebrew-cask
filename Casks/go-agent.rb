cask "go-agent" do
  arch arm: "-aarch64"

  version "23.3.0,16991"
  sha256 arm:   "2ca3b5acd41b6401d8636e2b22a643e1df237caadc3192251463756e197eaf32",
         intel: "ab67d8f80d00707ed7de50a631bb7de51a96b9aa57a5a266a1a339ee3d44a119"

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
