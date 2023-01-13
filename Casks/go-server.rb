cask "go-server" do
  version "22.3.0,15301"
  sha256 "55393bf29bf099968761dcbea73081c4b9d499beb459ba391c13ac574a5c9e82"

  url "https://download.gocd.io/binaries/#{version.csv.first}-#{version.csv.second}/osx/go-server-#{version.csv.first}-#{version.csv.second}-osx.zip",
      verified: "download.gocd.io/binaries/"
  name "Go Server"
  name "GoCD Server"
  desc "Server for the Go Continuous Delivery platform"
  homepage "https://www.gocd.org/"

  livecheck do
    url "https://download.gocd.org/releases.json"
    regex(/go[._-]server[._-]v?(\d+(?:\.\d+)+)[._-](\d+)[._-]osx\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  binary "go-server-#{version.csv.first}/bin/go-server"
end
