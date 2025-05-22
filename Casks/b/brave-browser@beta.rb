cask "brave-browser@beta" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "beta-arm64", intel: "beta"

  version "1.80.90.0"
  sha256 arm:   "d841c9b25b9b91791a221b7364f06533b13c422cdb77df714a19278d06a05c34",
         intel: "eb2a3f342f48752e53000d2220b4e469f0eaf917545a7d582d28ce6ae380e3b6"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.major_minor_patch.sub(".", "")}/Brave-Browser-Beta-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave Beta"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-beta/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Brave Browser Beta.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Browser-Beta",
        "~/Library/Caches/BraveSoftware/Brave-Browser-Beta",
        "~/Library/Caches/com.brave.Browser.beta",
        "~/Library/HTTPStorages/com.brave.Browser.beta",
        "~/Library/Preferences/com.brave.Browser.beta.plist",
        "~/Library/Saved Application State/com.brave.Browser.beta.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end
