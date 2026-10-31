cask "openidea" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.29"
  sha256 arm:   "44440e85f2a38380ffcc6f3405a3381b5503ca2d6a0ec9893fead6f9d2dfce07",
         intel: "020a0c41e6a1eb93460d9aaa3f87b24a7ed314880607b682c49b1f540a317f80"

  url "https://github.com/l0ng-ai/openidea/releases/download/v#{version}/OpenIDEA_#{version}_#{arch}.dmg"
  name "OpenIDEA"
  desc "Native IDE with IntelliJ IDEA-style keymap, tool windows and search"
  homepage "https://github.com/l0ng-ai/openidea"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "OpenIDEA.app"

  zap trash: [
    "~/Library/Application Support/OpenIDEA",
    "~/Library/Caches/ai.l0ng.openidea",
    "~/Library/HTTPStorages/ai.l0ng.openidea",
    "~/Library/Logs/OpenIDEA",
    "~/Library/Preferences/ai.l0ng.openidea.plist",
    "~/Library/Saved Application State/ai.l0ng.openidea.savedState",
    "~/Library/WebKit/ai.l0ng.openidea",
  ]
end
