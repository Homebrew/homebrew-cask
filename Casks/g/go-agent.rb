cask "go-agent" do
  arch arm: "-aarch64"

  version "24.4.0,19686"
  sha256 arm:   "a17e4debde5fd1e6b95c21e3dc8e3db1450acc49fbab15fa00a6b23fd185f1c5",
         intel: "d95cac4ba69d973c963a7bead92d5308cc7486fc3668522efb77b50abc57515e"

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
