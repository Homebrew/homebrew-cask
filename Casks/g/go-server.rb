cask "go-server" do
  arch arm: "-aarch64"

  version "23.5.0,18179"
  sha256 arm:   "eac73a6dc6f94107be0fd5f9c3ac6e0d371dce971828fad573241db5711a4ce1",
         intel: "af7ffeee3217c7e3e80ca48ad42af26ed615d0d3f77d0ad66e26fbf7eacead7d"

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
