cask "brave-browser@beta" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "beta-arm64", intel: "beta"

  version "1.81.122.0"
  sha256 arm:   "5ff7084725ebedf39b357242fae8c0e75c15382fc2cc5218ede4694daa5a00d3",
         intel: "fe068b9704b1658a31ee2ff9232e3d09ef144b9ba70b8fde839bd4285c755bd9"

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
