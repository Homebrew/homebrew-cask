# typed: false
# frozen_string_literal: true

cask "sonixd" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.15.2"

  if Hardware::CPU.intel?
    sha256 "7c31a36472b176a13087588ed6d6b80df983be1fbc4c92fa6692a4f10b275c50"
  else
    sha256 "35b7c9a1355d14867c1873411385ba401cfed6ba2941be2ce77143c2609ad62d"
  end

  url "https://github.com/jeffvli/sonixd/releases/download/v#{version}/Sonixd-#{version}-mac-#{arch}.dmg"
  name "Sonixd"
  desc "Desktop client for Subsonic-API and Jellyfin 0.8.0+ compatible music servers"
  homepage "https://github.com/jeffvli/sonixd"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false

  app "Sonixd.app"

  zap trash: [
    "~/Library/Application Support/Sonixd",
    "~/Library/Caches/org.erb.sonixd",
    "~/Library/Caches/org.erb.sonixd.ShipIt",
    "~/Library/Preferences/org.erb.sonixd.plist",
    "~/Library/Saved Application State/org.erb.sonixd.savedState",
  ]
end
