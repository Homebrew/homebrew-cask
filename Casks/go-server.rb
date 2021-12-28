cask "go-server" do
  version "21.3.0,13067"
  sha256 "0bc49fe570e2eca6fcfdc091ebb5d422a7d7dc2fb5d155bddf0257727f296a55"

  url "https://download.gocd.io/binaries/#{version.before_comma}-#{version.after_comma}/osx/go-server-#{version.before_comma}-#{version.after_comma}-osx.zip",
      verified: "download.gocd.io/binaries/"
  name "Go Server"
  name "GoCD Server"
  desc "Server for the Go Continuous Delivery platform"
  homepage "https://www.gocd.org/"

  livecheck do
    url "https://download.gocd.org/releases.json"
    strategy :page_match
    regex(/go[._-]server[._-]v?(\d+(?:\.\d+)+)[._-](\d+)[._-]osx\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  binary "go-server-#{version.before_comma}/bin/go-server"
end
