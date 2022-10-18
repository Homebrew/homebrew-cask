cask "go-agent" do
  version "22.2.0,14697"
  sha256 "2337a120d744a2dd2138045dae68dc2893668e20b73b05272dbc656174b5f65f"

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
