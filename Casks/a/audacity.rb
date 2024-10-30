cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.7.0"
  sha256 arm:   "40e7749e876897524d65ae159a0df90591d13a9a775d6b98ba57339a2f0d6442",
         intel: "0c3e148947e1a0b7f5428eafbfe1c5b2750a178af594b2651d63b9cb126fded1"

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
