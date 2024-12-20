cask "go-agent" do
  arch arm: "-aarch64"

  version "24.5.0,19913"
  sha256 arm:   "516314a81ee2305c4d0c4375dfba3c627edb0e668fcfdb8a3ffd6fa191171b6e",
         intel: "2d26269d545a631b6aeb0865a7d9f928171c4b32f61415f26bba38f53e1df6c3"

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
