cask "go-server" do
  arch arm: "-aarch64"

  version "24.3.0,19261"
  sha256 arm:   "2be45a716287f65ac23e17681c095faa2414ab8b64eb6144a5f625681836a648",
         intel: "95c7e3561f8175d80d8517e764f5d4e9dc75796309368a68298b7bfedc4b1716"

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
