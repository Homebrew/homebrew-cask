cask "gitbutler" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.16.6,2429"
  sha256 arm:   "edda4f5b3b25cb276218377625fc6d8f5af13638e1c1c51465f79c24774ee321",
         intel: "c19caeb42a0263fa18485d57750ea115b008559036d9d050165015d0c23c1aa6"

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

  app "GitButler.app"
  binary "#{appdir}/GitButler.app/Contents/MacOS/but", target: "but"

  zap trash: [
    "~/Library/Application Support/com.gitbutler.app",
    "~/Library/Caches/com.gitbutler.app",
    "~/Library/Logs/com.gitbutler.app",
    "~/Library/Preferences/com.gitbutler.app.plist",
    "~/Library/Saved Application State/com.gitbutler.app.savedState",
    "~/Library/WebKit/com.gitbutler.app",
  ]
end
