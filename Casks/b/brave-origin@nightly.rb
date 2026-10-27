cask "brave-origin@nightly" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  sha256 arm:   "6fbcc459e320e2181a2e21259c41b7c916f4e24dbbef4c81bde34c04d69af8f7",
         intel: "87e42ab982684911c971e607ec30eef98881627f9742f8b5b59e9fd365483c3f"

  on_arm do
    version "1.100.36.0"
  end
  on_intel do
    version "1.100.23.0"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Origin/nightly#{folder_arch}/#{version.major_minor_patch.sub(".", "")}/Brave-Origin-Nightly-#{arch}.dmg"
  name "Brave Origin Nightly"
  desc "Privacy-focused web browser"
  homepage "https://brave.com/origin/#nightly"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Origin/nightly#{folder_arch}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

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
