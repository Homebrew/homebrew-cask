cask "brave-origin@nightly" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  version "1.93.91.0"
  sha256 arm:   "7c05d9d853cf7dabf334dc556cbadfc0de97626965783160a36258e5cfa3abbc",
         intel: "4a4a30d903b3ce7448b44bf31443f638a0a45d63e8f6c6f0d60b3062b0ba46ad"

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
