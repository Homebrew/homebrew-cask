cask "go-agent" do
  version "19.1.0-8469"
  sha256 "113b21b10590c7a066bdd0597825b672bfed8b33b9cda756b9d6fea42a7c7c3e"

  # download.gocd.io/binaries/ was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-agent-#{version}-osx.zip"
  appcast "https://github.com/gocd/gocd/releases.atom"
  name "Go Agent"
  name "GoCD Agent"
  desc "Agent for the Go Continuous Delivery platform"
  homepage "https://www.gocd.org/"

  app "Go Agent.app"
end
