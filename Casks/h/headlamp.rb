cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.35.0"
  sha256 arm:   "6d5ad0a93d1ddac5916b54ed8e71d61fc4c17858ccb4d2c16fcd94e55c02047a",
         intel: "3b4def0ce906668c26aede9e960c07f3a3bb576d239fc38ce54f26f45dad78af"

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

  depends_on macos: ">= :catalina"

  app "Headlamp.app"

  uninstall quit: "com.kinvolk.headlamp"

  zap trash: [
    "~/Library/Application Support/Headlamp",
    "~/Library/Logs/Headlamp",
    "~/Library/Preferences/com.kinvolk.headlamp.plist",
  ]
end
