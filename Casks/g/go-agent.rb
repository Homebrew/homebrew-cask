cask "go-agent" do
  arch arm: "-aarch64"

  version "25.4.0,21793"
  sha256 arm:   "9983a201f318c40bd3f2935b6d8f190ed526ce891eda65fe241aa8dbc73ceed0",
         intel: "30c322b0fd1919ae6d7a0450544b57fc0103dc89cbe15b0b4e8c262f9818696d"

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
