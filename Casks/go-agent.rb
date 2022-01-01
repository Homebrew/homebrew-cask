cask "go-agent" do
  version "21.4.0,13469"
  sha256 "c1cfc71c5389cbb9d7d290448995515d93a01b7f1c4c236be9f0b39c4f8b89b0"

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
