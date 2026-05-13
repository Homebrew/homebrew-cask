cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.37.0"
  sha256 arm:   "56421e7d609268ecc8667e4ca01b50b3bdd1122e85dc0fb7946e716c77fe0822",
         intel: "c7255671135e9b01aaf88c27c036d22ea7f199827bbf7d0a65a6b5ef3662995c"

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
