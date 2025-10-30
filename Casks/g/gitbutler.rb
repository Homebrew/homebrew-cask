cask "gitbutler" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.17.0,2534"
  sha256 arm:   "861b9023285764fe073ab69c0bf3fb0a393f0011913d1451a38b1ea319d008d0",
         intel: "a94b8e5b9a3125611c52b1cbbc99b9b0c05bb206359c612c1d4b92eabc327d30"

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
