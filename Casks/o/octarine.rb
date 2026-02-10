cask "octarine" do
  arch arm: "aarch64", intel: "x64"
  folder = on_arch_conditional arm: "arm", intel: "intel"

  version "0.35.1"
  sha256 arm:   "26db2f0aa79c9ce54b5b9d8369ff648cec56a384eaf838cf643e5009b2913a20",
         intel: "878df63589f0ceaad46f7b75ad19077c725b33a3e494f6d70d6ff5273a09a21b"

  url "https://pub-3d35bc018fc54f11bde129e3e73e8002.r2.dev/#{version}/#{folder}/octarine_#{version}_#{arch}.dmg",
      verified: "pub-3d35bc018fc54f11bde129e3e73e8002.r2.dev/"
  name "Octarine"
  desc "Markdown-based note-taking app"
  homepage "https://octarine.app/"

  livecheck do
    url "https://octarine.app/releases"
    regex(/href=.*?octarine[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "Octarine.app"

  zap trash: [
    "~/Library/Application Support/Octarine",
    "~/Library/Caches/Octarine",
    "~/Library/Preferences/Octarine.plist",
    "~/Library/Saved Application State/Octarine.savedState",
    "~/Library/WebKit/Octarine",
  ]
end
