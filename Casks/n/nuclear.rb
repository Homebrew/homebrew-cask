cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.37.3"
  sha256 arm:   "49e6635bd729c490bb7bc8049c0a42f4064acfc0efea9e85767c648c58c6c50a",
         intel: "038bf5e962e5434743ae6bac880e6825cd98e36e5050c8c7ae30a6c24ad302d9"

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
