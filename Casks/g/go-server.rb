cask "go-server" do
  arch arm: "-aarch64"

  version "24.4.0,19686"
  sha256 arm:   "3108ce55784466e7677f01d99621ffaca2e1f99bf36ff83fe7a13161c7ce497c",
         intel: "8bc3b0381b7e94500c064979afd366b6b3e8306ffdd7caf7b8389e92d9744f50"

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
