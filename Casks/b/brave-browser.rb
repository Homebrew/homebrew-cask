cask "brave-browser" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "stable-arm64", intel: "stable"

  version "1.82.170.0"
  sha256 arm:   "f7e8c2162325f5423257e0a09ba0350903b24bcef41a09f8cdb9fc4ea2e18abb",
         intel: "bd5cbdd45a3874e4ce645368c4ec6559240e79c8ba6bd92f4bb7a8653279b24e"

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
