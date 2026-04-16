cask "t3-code@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.0.18-nightly.20260416.46"
  sha256 arm:   "30ab881b47070f3459e0063820e31e45bf661d0de51d1174d8ab185bd86d98a8",
         intel: "4649a696758336d790d2ce794678b503397b2b36a354753644993ba06c933bc9"

  url "https://github.com/pingdotgg/t3code/releases/download/nightly-v#{version}/T3-Code-#{version}-#{arch}.dmg",
      verified: "github.com/pingdotgg/t3code/"
  name "T3 Code Nightly"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url "https://github.com/pingdotgg/t3code/releases"
    regex(/^nightly-v?(\d+(?:\.\d+)+-nightly\.\d{8}\.\d+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next unless release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  conflicts_with cask: "t3-code"
  depends_on macos: ">= :monterey"

  app "T3 Code (Nightly).app"

  zap trash: [
    "~/.t3/userdata",
    "~/Library/Application Support/T3 Code (Alpha)",
    "~/Library/Application Support/t3code",
    "~/Library/Caches/com.t3tools.t3code",
    "~/Library/HTTPStorages/com.t3tools.t3code",
    "~/Library/Preferences/com.t3tools.t3code.plist",
    "~/Library/Saved Application State/com.t3tools.t3code.savedState",
  ]
end
