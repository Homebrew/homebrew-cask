cask "openidea" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.28"
  sha256 arm:   "2fd3f6a236254594b5749ae921a0433573bcfb235db6c0e1f49397a45040a16c",
         intel: "cdee46c65b85fef0c9e41bd50ee25764a900ef81d824f0eaef76a4da0742e138"

  url "https://github.com/l0ng-ai/openidea/releases/download/v#{version}/OpenIDEA_#{version}_#{arch}.dmg"
  name "OpenIDEA"
  desc "Native IDE with IntelliJ IDEA-style keymap, tool windows and search"
  homepage "https://github.com/l0ng-ai/openidea"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "OpenIDEA.app"

  zap trash: [
    "~/Library/Application Support/OpenIDEA",
    "~/Library/Caches/OpenIDEA",
    "~/Library/Logs/OpenIDEA",
    "~/Library/Preferences/com.openidea.app.plist",
    "~/Library/Saved Application State/com.openidea.app.savedState",
  ]
end
