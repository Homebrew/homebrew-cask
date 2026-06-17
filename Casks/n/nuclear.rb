cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.40.3"
  sha256 arm:   "55dfa802c78095d16c6d7310c45c228019c4e99b4a98a9486bc806b83dbba6a0",
         intel: "d99ace60cc0ceb9ba145475eb1f1980710dcafeac532bd36ae300f63f0828d2c"

  url "https://github.com/nukeop/nuclear/releases/download/player%40#{version}/Nuclear_#{version}_#{arch}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclearplayer.com/"

  livecheck do
    url :url
    regex(/^(?:player@)?v?(\d+(?:\.\d+)+)$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "Nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
