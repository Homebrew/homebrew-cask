cask "go-agent" do
  arch arm: "-aarch64"

  version "23.5.0,18179"
  sha256 arm:   "ec9c6f9edc016c3a763ae4ce007a4dea1db4207fb8a0f4510bccce9797a5045b",
         intel: "757c6a5c73c32bc6ad4549078ea8332e9170c50b9fc0267436f11ac64d6a4f3c"

  url "https://download.gocd.org/binaries/#{version.csv.first}-#{version.csv.second}/osx/go-agent-#{version.csv.first}-#{version.csv.second}-osx#{arch}.zip"
  name "Go Agent"
  name "GoCD Agent"
  desc "Agent for the Go Continuous Delivery platform"
  homepage "https://www.gocd.org/"

  livecheck do
    url "https://download.gocd.org/releases.json"
    regex(/go[._-]agent[._-]v?(\d+(?:\.\d+)+)[._-](\d+)[._-]osx\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  binary "go-agent-#{version.csv.first}/bin/go-agent"

  # No zap stanza required
end
