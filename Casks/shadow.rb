cask "shadow" do
  arch arm: "arm64", intel: "x64"

  version "8.0.10097"
  sha256 arm:   "0adffaed6fcedb8721c641012335a327bd0ab1d02ce15b4de371b54eb90c232e",
         intel: "ea1d5b6afeb9a88c5204e4a5c2f507f0fea0a67fb6434e360145bc2283cbb209"

  url "https://update.shadow.tech/launcher/prod/mac/#{arch}/ShadowPC-#{version}.dmg"
  name "Shadow"
  desc "Online virtualized computer"
  homepage "https://shadow.tech/"

  livecheck do
    url "https://update.shadow.tech/launcher/prod/mac/#{arch}/latest-mac.yml"
    strategy :electron_builder
  end

  app "Shadow PC.app"

  zap trash: [
    "~/Library/Application Support/Shadow",
    "~/Library/Preferences/com.electron.shadow.helper.plist",
    "~/Library/Preferences/com.electron.shadow.plist",
  ]
end
