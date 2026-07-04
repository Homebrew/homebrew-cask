cask "brave-origin@nightly" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  sha256 arm:   "5074658ad774802bd6f50f8fa513d37996a1db906d9b30adb39c6c090ee7da39",
         intel: "1f7864412f16d18093ac91e929fd0f92a99e167fdad7ef4811f7431dde088f38"

  on_arm do
    version "1.94.37.0"
  end
  on_intel do
    version "1.94.34.0"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Origin/nightly#{folder_arch}/#{version.major_minor_patch.sub(".", "")}/Brave-Origin-Nightly-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Origin/"
  name "Brave Origin Nightly"
  desc "Privacy-focused web browser"
  homepage "https://brave.com/origin/#nightly"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Origin/nightly#{folder_arch}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Brave Origin Nightly.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Origin-Nightly",
        "~/Library/Caches/BraveSoftware/Brave-Origin-Nightly",
        "~/Library/Caches/com.brave.Browser.origin.nightly",
        "~/Library/HTTPStorages/com.brave.Browser.origin.nightly",
        "~/Library/Preferences/com.brave.Browser.origin.nightly.plist",
        "~/Library/Saved Application State/com.brave.Browser.origin.nightly.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end
