cask "octarine" do
  arch arm: "aarch64", intel: "x64"
  folder = on_arch_conditional arm: "arm", intel: "intel"

  version "0.24.1"
  sha256 arm:   "223eff00bcb2c62d24f6c77421301bc14da28b1fb5bae12d29e88a0a68c53c62",
         intel: "129c9a169408c20d0a2f41d55656ffd9dd9534a4239c8abd0726363a2afbb787"

  url "https://pub-3d35bc018fc54f11bde129e3e73e8002.r2.dev/#{version}/#{folder}/octarine_#{version}_#{arch}.dmg",
      verified: "pub-3d35bc018fc54f11bde129e3e73e8002.r2.dev/"
  name "Octarine"
  desc "Markdown-based note-taking app"
  homepage "https://octarine.app/"

  livecheck do
    url "https://octarine.app/releases"
    regex(/href=.*?octarine[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Octarine.app"

  zap trash: [
    "~/Library/Application Support/Octarine",
    "~/Library/Caches/Octarine",
    "~/Library/Preferences/Octarine.plist",
    "~/Library/Saved Application State/Octarine.savedState",
    "~/Library/WebKit/Octarine",
  ]
end
