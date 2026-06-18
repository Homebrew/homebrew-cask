cask "gitbutler" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.20.1,3095"
  sha256 arm:   "a5311b928f1e0d63c00626e88fcc289b81c7006195190ed86c6cdbf49c84b79a",
         intel: "b7697e5d4ed93f4122136f17bc13c2f3fba871d8026b218bdefee12c6c086d49"

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
