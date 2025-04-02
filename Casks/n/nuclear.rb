cask "nuclear" do
  arch arm: "arm64", intel: "x64"

  version "0.6.45"
  sha256 arm:   "9f7811def8e9e3ad82a98c0844981f6268e7165248a382a2a787ffe06a663308",
         intel: "51a3f5eb36437acb3cc13812b8318606a78b808d092ef32fbe8f99315b465d2c"

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
