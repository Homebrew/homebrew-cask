cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.4.2"
  sha256 arm:   "01946a56dc45acc01d693fd3b7e7d2325e6adb4f052253bc94fe7e7b272d5791",
         intel: "70400941a153815f803ab436d23c08f29dbb80f7777ab21134663539727307b7"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
