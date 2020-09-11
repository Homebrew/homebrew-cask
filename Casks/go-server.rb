cask "go-server" do
  version "19.1.0-8469"
  sha256 "6f7d6ce6875d51ab7194834ec836bc502a405b82c90b9359df520850850a27ee"

  # download.gocd.io/binaries/ was verified as official when first introduced to the cask
  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip"
  appcast "https://github.com/gocd/gocd/releases.atom"
  name "Go Server"
  name "GoCD Server"
  desc "Server for the Go Continuous Delivery platform"
  homepage "https://www.gocd.org/"

  app "Go Server.app"
end
