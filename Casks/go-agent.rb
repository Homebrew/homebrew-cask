cask "go-agent" do
  version "22.3.0,15301"
  sha256 "262b9c935548c1404634226d3f839a0fab84adf1715c6917e96786d4d9c6fc61"

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
