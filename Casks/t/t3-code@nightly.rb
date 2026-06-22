cask "t3-code@nightly" do
  arch arm: "arm64", intel: "x64"

  version "0.0.28-nightly.20260622.622"
  sha256 arm:   "a6e6a38146e38f6504fa2cae022b003fd00dbfed504d6f8f234196ae4c4200d9",
         intel: "d046f8c970fe36f313ca760afddcb7d934e1dbe80189cd4c866115d548bea917"

  url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{version}-#{arch}.dmg",
      verified: "github.com/pingdotgg/t3code/"
  name "T3 Code Nightly"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url "https://github.com/pingdotgg/t3code/releases"
    regex(/(\d+(?:\.\d+)+-nightly\.\d{8}\.\d+)$/i)
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
  depends_on macos: :monterey

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
