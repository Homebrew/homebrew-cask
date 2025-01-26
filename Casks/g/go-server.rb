cask "go-server" do
  arch arm: "-aarch64"

  version "25.1.0,20129"
  sha256 arm:   "325b320b26e999efa9f4eb5836ae564942b4909f112c73b272d0dc2e14402b48",
         intel: "6ea555b354d1be37d68b72fa32030b3c3468cceae59867b1dec91d633e2cf2c0"

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
