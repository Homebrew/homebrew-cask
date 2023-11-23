cask "overlayed" do
  version "0.0.0"
  sha256 "5cbec2d25e4a78528076b75b9fbc6613d78e7bacc2bbe90afaf705162007b5e9"

  url "https://github.com/Hacksore/overlayed/releases/download/v#{version}/overlayed_#{version}_x64.dmg",
      verified: "github.com/Hacksore/overlayed/"
  name "Overlayed"
  desc "Modern, open-source, and free voice chat overlay for Discord"
  homepage "https://overlayed.dev/"

  app "Overlayed.app"

  zap trash: [
    "~/Library/Application Support/com.hacksore.overlayed",
  ]
end
