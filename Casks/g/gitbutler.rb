cask "gitbutler" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.19.11,3038"
  sha256 arm:   "6fd31311beefbb0dbd9d3942888d6d56975e3bcf14495ca751b8f8e2697e38fe",
         intel: "fdbb35f8d0a95213733e487b8cbe774cc0d8022d7d9a3d0de8aa010dfc613a1f"

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
