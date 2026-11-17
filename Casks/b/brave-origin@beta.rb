cask "brave-origin@beta" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  sha256 arm:   "38fda0fd6b25879d9131389441632b36804d4d5ecbe91adf80522ef8a5ccf821",
         intel: "eff05310b855d78f83211944a0c2530f694318b9cb7fdf33b7815a92a4f6ec40"

  on_arm do
    version "1.101.50.0,201.50"
  end
  on_intel do
    version "1.101.50.0,201.50"
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
