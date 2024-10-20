cask "go-agent" do
  arch arm: "-aarch64"

  version "24.3.0,19261"
  sha256 arm:   "72a80b03107383559c243b1dbcaccff16a2a29a9cad73d1e25b2c5364aae9686",
         intel: "e54ee827bdb6093de51d4abf9ff8eca19d04c43dcdd13c5027a914633b7e40b7"

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
