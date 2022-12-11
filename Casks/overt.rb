cask "overt" do
  arch arm: "arm64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "ddd6b67695b15bbca1cb1a0d2d281d1c9809cd0c49dfc8724a06108c5fea51ec",
         intel: "42696c2eab8458580b0be2ca94a05ef53e0487c6c4774c9b5789f9daba34a377"

  url "https://github.com/GetOvert/Overt/releases/download/v#{version}/Overt-darwin-#{arch}-#{version}.zip",
      verified: "github.com/GetOvert/Overt/"
  name "Overt"
  desc "Open app store"
  homepage "https://getovert.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Overt.app"

  zap trash: [
    "~/Library/Application Support/OpenStore",
    "~/Library/Application Support/Overt",
    "~/Library/Caches/OpenStore_v1",
    "~/Library/Caches/OpenStore_v2",
    "~/Library/Caches/OpenStore_v3",
    "~/Library/Caches/Overt_v4",
    "~/Library/Caches/Overt_v5",
    "~/Library/Preferences/app.getopenstore.OpenStore.plist",
    "~/Library/Preferences/app.getovert.Overt.plist",
  ]
end
