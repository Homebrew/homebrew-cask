cask "go-agent" do
  arch arm: "-aarch64"

  version "25.2.0,20485"
  sha256 arm:   "5dc488581d96134e50766c7a92a014051131af6f9041715a280a3add1fa7593b",
         intel: "506b9f115dc6cc41ecfde1753093ac885849ad6f0ebc6d8eea72abe70a56b7fd"

  url "https://download.gocd.org/binaries/#{version.csv.first}-#{version.csv.second}/osx/go-agent-#{version.csv.first}-#{version.csv.second}-osx#{arch}.zip"
  name "Go Agent"
  name "GoCD Agent"
  desc "Agent for the Go Continuous Delivery platform"
  homepage "https://www.gocd.org/"

  livecheck do
    url "https://download.gocd.org/releases.json"
    strategy :json do |json|
      json.map do |item|
        next if item.dig("osx", "agent").blank?

        version = item["go_version"]
        build = item["go_build_number"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  binary "go-agent-#{version.csv.first}/bin/go-agent"

  # No zap stanza required
end
