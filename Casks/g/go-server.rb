cask "go-server" do
  arch arm: "-aarch64"

  version "25.2.0,20485"
  sha256 arm:   "2294864255da7c14344c0a181a4cea7daff5712defa21a584bc5caf801bcea2b",
         intel: "5850c8de4361e4bfb1f7ed3796789c3e4f509f930c4b42a4c55cae55887d48f0"

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
