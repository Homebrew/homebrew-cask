cask "go-server" do
  version "21.2.0-12498"
  sha256 "8bbb12117a2c6ebede5d49e675cfb64fc637fefc64050f5971e6d0e84a418142"

  url "https://download.gocd.io/binaries/#{version}/osx/go-server-#{version}-osx.zip",
      verified: "download.gocd.io/binaries/"
  name "Go Server"
  name "GoCD Server"
  desc "Server for the Go Continuous Delivery platform"
  homepage "https://www.gocd.org/"

  livecheck do
    url "https://download.gocd.org/releases.json"
    strategy :page_match
    regex(/go-server-(\d+(?:\.\d+)*-\d+)-osx\.zip/i)
  end

  binary "go-server-#{version.split("-").first}/bin/go-server"
end
