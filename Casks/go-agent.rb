cask "go-agent" do
  arch arm: "-aarch64"

  version "23.2.0,16938"
  sha256 arm:   "3962c2550cda8f46d25a9ebb2057163ba133fd883e25d2cc3dd7a086960c277b",
         intel: "827ecda61f56ecb7f839b07e9da0855e8b314c316446596e32d124a8ae55fff7"

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
