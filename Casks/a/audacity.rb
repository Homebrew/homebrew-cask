cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.4.0"
  sha256 arm:   "3f8a630f7a8a58c9c41a8ad22e6cf4f22119d160252e10076c6320cdfe4f6f1a",
         intel: "5950b13bbe1c5497f0b114d7e63614f7c45d66ce1e5010dddfe00ee69ccf15b5"

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
