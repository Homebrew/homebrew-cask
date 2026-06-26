cask "gitbutler" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.20.4,3116"
  sha256 arm:   "c9e434b9692ababd48000e30789e3bcb235b83785eb62481cd15ffd11893d676",
         intel: "be57a2ecf9f122090a2348c79e1b435a6b4689b09af5ca13ee0a95f63850c424"

  url "https://releases.gitbutler.com/releases/release/#{version.csv.first}-#{version.csv.second}/macos/#{arch}/GitButler.app.tar.gz"
  name "GitButler"
  desc "Git client for simultaneous branches on top of your existing workflow"
  homepage "https://gitbutler.com/"

  livecheck do
    url "https://app.gitbutler.com/releases/release/darwin-#{arch}/0.0.0"
    regex(%r{/release/v?(\d+(?:\.\d+)+)[._-](\d+)/macos}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on :macos

  app "GitButler.app"
  binary "#{appdir}/GitButler.app/Contents/MacOS/gitbutler-tauri", target: "but"

  zap trash: [
    "~/Library/Application Support/com.gitbutler.app",
    "~/Library/Caches/com.gitbutler.app",
    "~/Library/Logs/com.gitbutler.app",
    "~/Library/Preferences/com.gitbutler.app.plist",
    "~/Library/Saved Application State/com.gitbutler.app.savedState",
    "~/Library/WebKit/com.gitbutler.app",
  ]
end
