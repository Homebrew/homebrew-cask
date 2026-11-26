cask "brave-origin@beta" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  sha256 arm:   "7194f68322366b21dfc3fc0cb2f04fef57b2189983a2ffd751858a96db2a005e",
         intel: "5fb24ca8f283a56372f4eb9855f8e1e7755ca8a5fee2a16174b069574d1db66f"

  on_arm do
    version "1.101.57.0,201.57"
  end
  on_intel do
    version "1.101.57.0,201.57"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Origin/beta#{folder_arch}/#{version.csv.second}/Brave-Origin-Beta-#{arch}.dmg"
  name "Brave Origin Beta"
  desc "Privacy-focused web browser"
  homepage "https://brave.com/origin/#beta"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Origin/beta#{folder_arch}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Brave Origin Beta.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Origin-Beta",
        "~/Library/Caches/BraveSoftware/Brave-Origin-Beta",
        "~/Library/Caches/com.brave.Browser.origin.beta",
        "~/Library/HTTPStorages/com.brave.Browser.origin.beta",
        "~/Library/Preferences/com.brave.Browser.origin.beta.plist",
        "~/Library/Saved Application State/com.brave.Browser.origin.beta.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end
