cask "octarine" do
  arch arm: "aarch64", intel: "x64"
  folder = on_arch_conditional arm: "arm", intel: "intel"

  version "0.33.3"
  sha256 arm:   "a042026dfa812784bf1dd772835cca87733c32b651ccd568f9d99b6173fda17b",
         intel: "9c3b94435224d7a709dae803eb364f10574e01162570da6b819364dc39c38aa4"

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
