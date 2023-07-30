cask "go-server" do
  arch arm: "-aarch64"

  version "23.3.0,16991"
  sha256 arm:   "129b1e0f6347344d71929d2583e95a1b93b6cc59fea8a40e489effb61ef9ced7",
         intel: "38c458c2738ae4ee807253ca8ffca5e5de5b6c9e3d00087de85b7cca149fbbae"

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
