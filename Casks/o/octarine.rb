cask "octarine" do
  arch arm: "aarch64", intel: "x64"
  folder = on_arch_conditional arm: "arm", intel: "intel"

  version "0.46.0"
  sha256 arm:   "820568f5a7adaf31b6c7be3f2748f17ff505cc29b3c61e4942c2c20424e36d00",
         intel: "6645404ff8da441ef9f13e0fcda0a38d58105892aea82369f1f4ddd5341c8897"

  url "https://pub-3d35bc018fc54f11bde129e3e73e8002.r2.dev/#{version}/#{folder}/octarine_#{version}_#{arch}.dmg",
      verified: "pub-3d35bc018fc54f11bde129e3e73e8002.r2.dev/"
  name "Octarine"
  desc "Markdown-based note-taking app"
  homepage "https://octarine.app/"

  livecheck do
    url "https://octarine.app/releases"
    regex(/href=.*?octarine[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on :macos

  app "Octarine.app"

  zap trash: [
    "~/Library/Application Support/Octarine",
    "~/Library/Caches/Octarine",
    "~/Library/Preferences/Octarine.plist",
    "~/Library/Saved Application State/Octarine.savedState",
    "~/Library/WebKit/Octarine",
  ]
end
