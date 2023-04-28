cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.3.1"
  sha256 arm:   "133915a9f227a5f754ee7f3b09b402b14f99ebb7cc81736e9c936722b4cb09c1",
         intel: "c89f4396c9a0042d022614c0272835f8d18150499b72463ec31bbb9979fcd8da"

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/audacity/audacity/"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "Audacity.app"

  zap trash: [
    "~/Library/Application Support/audacity",
    "~/Library/Preferences/org.audacityteam.audacity.plist",
    "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
  ]
end
