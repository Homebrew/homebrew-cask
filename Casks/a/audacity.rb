cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.7.3"
  sha256 arm:   "9f763cf59fff9817da8f273f1fb28d3d8680eaf0444abcc70b84d8c5476d8bcd",
         intel: "4f3472d2314f902892c68d74cb23a416a9027232aa54bbdd3017a081590ee0e3"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
