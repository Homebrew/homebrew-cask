cask "go-server" do
  arch arm: "-aarch64"

  version "24.5.0,19913"
  sha256 arm:   "250ab6ff7d9c825c7262992385624b1552bb2272ff22c7efa498fb25c2308e82",
         intel: "f5fa9f20069c7808645ce1830ed93a009797fd99583330304d25ed985dc86665"

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
