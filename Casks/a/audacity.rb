cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.7.9"
  sha256 arm:   "fafeb7fa963d3e2ba05ee7aba5290c966362ac5f5feca86eb8b1f61c7819d499",
         intel: "142f3900bea5d49a73e66cce06e156b8e5387643e1b718806e85286753d6294f"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
