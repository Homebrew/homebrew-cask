cask "nuclear" do
  arch arm: "arm64", intel: "x64"

  version "0.6.40"
  sha256 arm:   "4d713ffa73b530c6e4d7483faabdaba3509680b0dce94fa6f53d36ff197ccb1c",
         intel: "d4301232efffe13e2df645cde30af5991e405ecfd633ba95fde6260fefd37a47"

  url "https://github.com/nukeop/nuclear/releases/download/v#{version}/nuclear-v#{version}-#{arch}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclear.js.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
