cask "brave-origin@beta" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  sha256 arm:   "14f45687553e8a129239f01d8fb0a19e6b31ebb1eb38ee58c239c1e55ec14782",
         intel: "3411f2069c884b83060f236860ee1f2b2c8e75c4adb849c825a147b4330ffaa8"

  on_arm do
    version "1.94.97.0"
  end
  on_intel do
    version "1.94.97.0"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Origin/beta#{folder_arch}/#{version.major_minor_patch.sub(".", "")}/Brave-Origin-Beta-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Origin/"
  name "Brave Origin Beta"
  desc "Privacy-focused web browser"
  homepage "https://brave.com/origin/#beta"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Origin/beta#{folder_arch}/appcast.xml"
    strategy :sparkle, &:short_version
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
