cask "go-server" do
  version "20.10.0-12356"
  sha256 "a143bcc6e2f54568a9be8a0537395d1bf34ab144ff1073ba93acddef60e14e7d"

  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip",
      verified: "download.gocd.io/binaries/"
  appcast "https://github.com/gocd/gocd/releases.atom"
  name "Go Server"
  name "GoCD Server"
  desc "Server for the Go Continuous Delivery platform"
  homepage "https://www.gocd.org/"

  app "Go Server.app"
end
