cask "go-server" do
  arch arm: "-aarch64"

  version "25.3.0,20862"
  sha256 arm:   "56d29bf28f4a39a5c15c03d7e696c8e11cf9cd5893b789ad8342ad881c072414",
         intel: "a809dc39ccbd2a1992a15805cfcba620aa01271875afd52e938f1b125cb81573"

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
