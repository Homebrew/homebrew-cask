cask "brave-browser" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "stable-arm64", intel: "stable"

  version "1.87.190.0"
  sha256 arm:   "a5c1affcd0a6497429fb4fda45b2c13835724b7a1f66e6dbfab773aa94d33a43",
         intel: "5b75bff6127baf83fa8b73c278393f78245290f88147c3232ede4536c08843be"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.major_minor_patch.sub(".", "")}/Brave-Browser-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Brave Browser.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Browser",
        "~/Library/Caches/BraveSoftware/Brave-Browser",
        "~/Library/Caches/com.brave.Browser",
        "~/Library/HTTPStorages/com.brave.Browser",
        "~/Library/Preferences/com.brave.Browser.plist",
        "~/Library/Saved Application State/com.brave.Browser.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end
