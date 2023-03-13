cask "go-agent" do
  version "23.1.0,16079"
  sha256 "d88760a0f1e8aa3e95c68a89ea96bdc4222029c4e3c0c7b0599d3fd262b7d682"

  url "https://download.gocd.io/binaries/#{version.csv.first}-#{version.csv.second}/osx/go-agent-#{version.csv.first}-#{version.csv.second}-osx.zip",
      verified: "download.gocd.io/binaries/"
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
end
