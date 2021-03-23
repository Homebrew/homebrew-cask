cask "go-agent" do
  version "21.2.0-12498"
  sha256 "6ab72f40f6205de1cc5861ce10bffceb0f9ce49580b399f9b214df93f31a2e1f"

  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip",
      verified: "download.gocd.io/binaries/"
  name "Go Agent"
  name "GoCD Agent"
  desc "Agent for the Go Continuous Delivery platform"
  homepage "https://www.gocd.org/"

  livecheck do
    url "https://download.gocd.org/releases.json"
    strategy :page_match
    regex(/go-agent-(\d+(?:\.\d+)*-\d+)-osx\.zip/i)
  end

  binary "go-agent-#{version.split("-").first}/bin/go-agent"
end
