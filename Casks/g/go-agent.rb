cask "go-agent" do
  arch arm: "-aarch64"

  version "25.1.0,20129"
  sha256 arm:   "ce5f00190a1805719aafbcec1608c5e9b7330fdf9ff5a3af6e6617410101793a",
         intel: "96a70696d4b602853a93f9391f53a65588289b2c29c652ee6c28b94bae46bec5"

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
