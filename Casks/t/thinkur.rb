cask "thinkur" do
  version "2.0.0"
  sha256 "04671287657fb1aa7203c628edb7739b4cd38f8c6971a76d1fb154a3c45b72de"

  url "https://github.com/jyoutir/thinkur-web/releases/download/v#{version}/thinkur-#{version}.dmg"
  name "thinkur"
  desc "Free, open-source voice-to-text for macOS"
  homepage "https://thinkur.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "thinkur.app"

  zap trash: [
    "~/Library/Application Support/com.jyo.thinkur",
    "~/Library/Preferences/com.jyo.thinkur.plist",
    "~/Library/Saved Application State/com.jyo.thinkur.savedState",
  ]
end
