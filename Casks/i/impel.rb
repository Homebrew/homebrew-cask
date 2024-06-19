cask "impel" do
  version "1.0.4"
  sha256 "ca2070f890d9921165058860134f60491438bed0c5db83de67aad8f7369b5ff6"

  url "https://impel-sparkle-updater.fly.dev/impel_#{version.dots_to_underscores}.tar.xz",
      verified: "impel-sparkle-updater.fly.dev/"
  name "Impel"
  desc "AI Companion"
  homepage "https://www.tryimpel.com/"

  livecheck do
    url "https://impel-sparkle-updater.fly.dev/appcast.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Impel.app"

  uninstall quit: [
    "com.tryimpel.impel.llama-runner-test",
    "com.tryimpel.impel.mac",
  ]

  zap trash: [
        "~/Documents/Impel/impel.sqlite",
        "~/Library/Application Support/com.tryimpel.impel.mac",
        "~/Library/Caches/com.tryimpel.impel.mac",
        "~/Library/HTTPStorages/com.tryimpel.impel.mac",
        "~/Library/Preferences/com.tryimpel.impel.mac.plist",
        "~/Library/Saved Application State/com.tryimpel.impel.mac.savedState",
      ],
      rmdir: "~/Documents/Impel"
end
