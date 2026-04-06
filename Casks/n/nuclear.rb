cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.32.1"
  sha256 arm:   "8aeaed10bcb8c276e117cbdf5409f5780f6f4446b3c86b70d09761f39937645f",
         intel: "2df0d607a57b4681f568a9b476c3796f7c34ecc20d5cbc1bda2d23f667d7e355"

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

  app "Nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
