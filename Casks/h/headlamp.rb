cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.28.0"
  sha256 arm:   "af4edf817776f84b340f5a0ebf8d4fca16ae9d354d4932759a89dc22af30d8fa",
         intel: "f611d27bd93a29c22c97fb009a6e22c36be4cfa8bc3985bc4a4f5ed659afa9b4"

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

  depends_on macos: ">= :catalina"

  app "Headlamp.app"

  uninstall quit: "com.kinvolk.headlamp"

  zap trash: [
    "~/Library/Application Support/Headlamp",
    "~/Library/Logs/Headlamp",
    "~/Library/Preferences/com.kinvolk.headlamp.plist",
  ]
end
