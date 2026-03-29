cask "flock-terminal" do
  version "0.9.1"
  sha256 "5507b2ec1e8b3d78b013a61bce4aacc236b2718ce29fc38f013f1f7963a49969"

  url "https://github.com/Divagation/flock/releases/download/v#{version}/Flock-#{version}-mac.zip",
      verified: "github.com/Divagation/flock/"
  name "Flock"
  desc "Terminal multiplexer for Claude Code sessions"
  homepage "https://divagation.github.io/flock/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Flock.app"
  binary "#{appdir}/Flock.app/Contents/MacOS/Flock", target: "flock"

  zap trash: [
    "~/Library/Preferences/com.baa.flock.plist",
    "~/Library/Saved Application State/com.baa.flock.savedState",
  ]
end
