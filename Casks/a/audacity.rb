cask "audacity" do
  arch arm: "arm64", intel: "x86_64"

  version "3.7.4"
  sha256 arm:   "63c551cc74e16ff8e788b51aeacda8e866bb21213cf721a9b09a8a3b4e81d046",
         intel: "11dd95c619dd1cb8e47ee78e0855affc199a669a05439d194c81ed1bfc90b263"

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
