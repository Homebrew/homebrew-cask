cask "overlayed" do
  version "0.5.0"
  sha256 "73e7d3d0f946a0624045793e8f762e52ef7729c64589b42cc28a0c2cc70ccf3f"

  url "https://github.com/overlayeddev/overlayed/releases/download/v#{version}/overlayed_#{version}_universal.dmg",
      verified: "github.com/overlayeddev/overlayed/"
  name "Overlayed"
  desc "Modern, open-source, and free voice chat overlay for Discord"
  homepage "https://overlayed.dev/"

  depends_on macos: ">= :high_sierra"

  app "Overlayed.app"

  zap trash: "~/Library/Application Support/com.hacksore.overlayed"
end
