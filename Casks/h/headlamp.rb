cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.36.0"
  sha256 arm:   "8a3652296a960fd2cb7a5d052720e8678a5a5914d85314c9fbe952f0c48811d6",
         intel: "6b9d8e0eb61a12ff51788c4643e07c5c24ca5638b8f947b1b5ef5ebc5e9abdd5"

  url "https://github.com/headlamp-k8s/headlamp/releases/download/v#{version.sub(/-\d+/, "")}/Headlamp-#{version}-mac-#{arch}.dmg",
      verified: "github.com/headlamp-k8s/headlamp/"
  name "Headlamp"
  desc "UI for Kubernetes"
  homepage "https://headlamp.dev/"

  livecheck do
    url :url
    regex(/Headlamp[._-]v?(\d+(?:[.-]\d+)+)-mac-#{arch}/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  no_autobump! because: :bumped_by_upstream

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Headlamp.app"

  uninstall quit: "com.kinvolk.headlamp"

  zap trash: [
    "~/Library/Application Support/Headlamp",
    "~/Library/Logs/Headlamp",
    "~/Library/Preferences/com.kinvolk.headlamp.plist",
  ]
end
