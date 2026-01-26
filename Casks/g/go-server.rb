cask "go-server" do
  arch arm: "-aarch64"

  version "25.4.0,21793"
  sha256 arm:   "924ef5796796db06d0a2326668457ef5f1b1a61de26c16d81379319105a1501a",
         intel: "25d20bc6235bbc1a9d54cd56f8a50545ec916851e0a0d75908822b66d701cd5c"

  url "https://download.gocd.org/binaries/#{version.csv.first}-#{version.csv.second}/osx/go-server-#{version.csv.first}-#{version.csv.second}-osx#{arch}.zip"
  name "Go Server"
  name "GoCD Server"
  desc "Server for the Go Continuous Delivery platform"
  homepage "https://www.gocd.org/"

  livecheck do
    url "https://download.gocd.org/releases.json"
    strategy :json do |json|
      json.map do |item|
        next if item.dig("osx", "server").blank?

        version = item["go_version"]
        build = item["go_build_number"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  binary "go-server-#{version.csv.first}/bin/go-server"

  # No zap stanza required
end
