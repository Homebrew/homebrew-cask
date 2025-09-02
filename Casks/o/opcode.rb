cask "opcode" do
  version "0.2.0"
  sha256 "9868d20b46fa3fba134049e931ef745571805b0e1919e7bad807ca454f5932f8"

  url "https://github.com/getAsterisk/opcode/releases/download/v#{version}/opcode_v#{version}_macOS_universal.dmg",
      verified: "github.com/getAsterisk/opcode/"
  name "opcode"
  desc "GUI app and toolkit for Claude Code"
  homepage "https://opcode.sh/"

  # Upstream creates releases that use a stable tag (e.g., `v1.2.3`) but are
  # labeled as "pre-release" on GitHub before the version is released, so it's
  # necessary to use the `GithubLatest` strategy.
  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "opcode.app"

  uninstall quit: "opcode.asterisk.so"

  zap trash: [
    "~/Library/Application Support/opcode",
    "~/Library/Logs/opcode",
    "~/Library/Preferences/opcode.asterisk.so.plist",
    "~/Library/Saved Application State/opcode.asterisk.so.savedState",
  ]
end
