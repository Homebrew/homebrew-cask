cask "go-server" do
  arch arm: "-aarch64"

  version "23.2.0,16938"
  sha256 arm:   "6aac3acee37d2371235aa92a0a6c1381d6e7664a5b2a315598e47249ec81aafe",
         intel: "dfec4d6a3df36de23488384675194ba3c589a09937057a423788ab0a8ee495a9"

  url "https://download.gocd.org/binaries/#{version.csv.first}-#{version.csv.second}/osx/go-server-#{version.csv.first}-#{version.csv.second}-osx#{arch}.zip"
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

  # No zap stanza required
end
