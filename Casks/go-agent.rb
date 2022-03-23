cask "go-agent" do
  version "22.1.0,13913"
  sha256 "1a0df6da1b71e36ac17b546a98fc9d8eeddc9ac19962dd9138fb5260b1b3185e"

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
