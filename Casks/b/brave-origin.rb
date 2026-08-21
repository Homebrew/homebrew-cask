cask "brave-origin" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  version "1.93.138.0"
  sha256 arm:   "35c3944386bed56d48ba41b6a4cf1694cefd7062a4ea98b4a4ddc425bf7838ba",
         intel: "dff9e636b9fe4c5dc7861ae8b5f4585c00d39727cde1ae25f2ecd69b147b0803"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Origin/stable#{folder_arch}/#{version.major_minor_patch.sub(".", "")}/Brave-Origin-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Origin/"
  name "Brave Origin"
  desc "Privacy-focused web browser"
  homepage "https://brave.com/origin"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Origin/stable#{folder_arch}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Brave Origin.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Origin",
        "~/Library/Caches/BraveSoftware/Brave-Origin",
        "~/Library/Caches/com.brave.Browser.origin",
        "~/Library/HTTPStorages/com.brave.Browser.origin",
        "~/Library/Preferences/com.brave.Browser.origin.plist",
        "~/Library/Saved Application State/com.brave.Browser.origin.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end
