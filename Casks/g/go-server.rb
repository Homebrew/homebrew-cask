cask "go-server" do
  arch arm: "-aarch64"

  version "24.2.0,19076"
  sha256 arm:   "33f91660361688ff6ea2aa398229b3ddc97478dbfcd5d6bd98fc3eb06007aa7c",
         intel: "370c7500418b12bdc2ab5cb55a677c0b5d841ed177a18bb6448b392b9fdbb1c4"

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
