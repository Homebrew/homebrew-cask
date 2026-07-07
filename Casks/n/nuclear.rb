cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.42.0"
  sha256 arm:   "df7fed91e87be3ce3b0aaf358e85dd421ed0091c85143cc36a2307545638ad7c",
         intel: "a9252ba545c29d0dac08caac242816e124894afaff84bacd73ba0b6d0437b07d"

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
