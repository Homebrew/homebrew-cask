cask "recordly" do
  arch arm: "arm64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "520ee1d5570f2342e126306eda84b95e442c844b6f0e84c6e81c208445be8cc4",
         intel: "f478afef1c37adb8d4df9e0c0cdecde99df6f3131e34629ad3f5c3c8c226d1b5"

  url "https://github.com/webadderallorg/Recordly/releases/download/v#{version}/Recordly-#{arch}.dmg"
  name "Recordly"
  desc "Creator-focused screen recorder with auto-zoom, cursor effects, and more"
  homepage "https://github.com/webadderallorg/Recordly"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Recordly.app"

  zap trash: [
    "~/Library/Application Support/Recordly",
    "~/Library/Preferences/dev.recordly.app.plist",
    "~/Library/Saved Application State/dev.recordly.app.savedState",
  ]
end
