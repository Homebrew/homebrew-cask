cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.34.0"
  sha256 arm:   "711dbbe9fb19e6c5d22cd32239c1f50e01fcbec065f98d4eaf18bab352b9a1ca",
         intel: "93b5c592628bf1cf1cd620520fd428adde0e2c4bc8b6ba516e3e25a980579bf9"

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
