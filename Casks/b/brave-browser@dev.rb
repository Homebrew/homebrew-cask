cask "brave-browser@dev" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "dev-arm64", intel: "dev"

  version "1.61.87.0"
  sha256 arm:   "0416c004411443dc66c7330c9181b5bfbb31dcc9f14a6e79efab2b02aa07bc35",
         intel: "bd17479a2b65e693f979c58038d82657cbf63298ea3162f5fa714ac8e0580480"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.major_minor_patch.sub(".", "")}/Brave-Browser-Dev-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave Dev"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-dev/"

  disable! date: "2024-12-07", because: :discontinued

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Brave Browser Dev.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Browser-Dev",
        "~/Library/Caches/BraveSoftware/Brave-Browser-Dev",
        "~/Library/Caches/com.brave.Browser.dev",
        "~/Library/HTTPStorages/com.brave.Browser.dev",
        "~/Library/Preferences/com.brave.Browser.dev.plist",
        "~/Library/Saved Application State/com.brave.Browser.dev.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end
