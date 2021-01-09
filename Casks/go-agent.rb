cask "go-agent" do
  version "20.10.0-12356"
  sha256 "7f7d1bca438f66b26e925b50ae189ea6e415fac0ec280f7b636d55fb9d6ad23e"

  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip",
      verified: "download.gocd.io/binaries/"
  appcast "https://github.com/gocd/gocd/releases.atom"
  name "Go Agent"
  name "GoCD Agent"
  desc "Agent for the Go Continuous Delivery platform"
  homepage "https://www.gocd.org/"

  app "Go Agent.app"
end
