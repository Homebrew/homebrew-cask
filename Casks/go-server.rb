cask "go-server" do
  version "22.2.0,14697"
  sha256 "4c97110029480db39a9c4c96bed1a3a104ab49ef0e0ca0864da52fa43ed54ece"

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
