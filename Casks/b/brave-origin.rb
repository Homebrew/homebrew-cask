cask "brave-origin" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  version "1.96.60.0"
  sha256 arm:   "a50fbbaf3cb848bc62c0584497fbdad71f8877ee4f0a8f18d3a6a55dd37cdf47",
         intel: "0d455d56d5efc06d8cf73b7b987f6cc684459ac970f40ab253c97b0989d02bd2"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Origin/stable#{folder_arch}/#{version.major_minor_patch.sub(".", "")}/Brave-Origin-#{arch}.dmg"
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
