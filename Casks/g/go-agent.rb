cask "go-agent" do
  arch arm: "-aarch64"

  version "25.3.0,20862"
  sha256 arm:   "ce21c906cdb3b4274f5eeddfc386e8c8fb2d7080b48c5489758c7463fe04dd91",
         intel: "c43e5e1233a827f359b91a1bc18d9f526fa664d41bd17ff3d9c16b2cbdd5fe54"

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
