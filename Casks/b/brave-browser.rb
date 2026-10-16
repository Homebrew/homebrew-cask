cask "brave-browser" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "stable-arm64", intel: "stable"

  version "1.97.59.0"
  sha256 arm:   "4129207d00e568c5dba080bb91cb3b92d5762600391a32b6debb8162518d6b06",
         intel: "1508f2c829033fb22d708bdab3a378867491cb742aa531604821ef371706c6c2"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.major_minor_patch.sub(".", "")}/Brave-Browser-#{arch}.dmg"
  name "Brave"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

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
