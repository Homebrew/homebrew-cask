cask "iconcraft" do
  version "0.13.3"
  sha256 "21f8f4e3a2d66c6e9507bcb7ac4253f0fd41d8ee61e6a861013752635ce4444a"

  url "https://github.com/gshipman223/IconCraft/releases/download/v#{version}/IconCraft-Mac-#{version}.dmg"
  name "IconCraft"
  desc "Restore original app names and icons, or customise any macOS app"
  homepage "https://iconcraft.co"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "IconCraft.app"

  zap trash: "~/Library/Application Support/IconCraft"
end
