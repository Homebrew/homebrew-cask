cask "hop" do
  arch arm: "arm64", intel: "x64"

  version "0.1.8"
  sha256 arm:   "73566974e3bd209eb51b0e024c4f45f4ccd1d77297396bfbbe284d18b6ad0861",
         intel: "2298e22c22aef88ce156a7e17661980736d88761492323f4eba758dbc8e8745b"

  url "https://github.com/golbin/hop/releases/download/v#{version}/HOP-macos-#{arch}.dmg",
      verified: "github.com/golbin/hop/"
  name "HOP"
  desc "View and edit HWP documents"
  homepage "https://golbin.github.io/hop/"

  depends_on :macos

  app "HOP.app"

  zap trash: [
    "~/Library/Application Support/net.golbin.hop",
    "~/Library/Caches/net.golbin.hop",
    "~/Library/Logs/net.golbin.hop",
    "~/Library/WebKit/net.golbin.hop",
  ]
end
