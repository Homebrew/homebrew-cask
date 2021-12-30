cask "go-agent" do
  version "21.3.0,13067"
  sha256 "8969fd8d0b708601eabc6db6167c0b8d0f6e559b7ff394f659ac66210216d8d0"

  url "https://download.gocd.io/binaries/#{version.before_comma}-#{version.after_comma}/osx/go-agent-#{version.before_comma}-#{version.after_comma}-osx.zip",
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

  binary "go-agent-#{version.before_comma}/bin/go-agent"
end
