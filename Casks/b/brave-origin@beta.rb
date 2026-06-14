cask "brave-origin@beta" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "beta-arm64", intel: "beta"

  version "1.92.120.0"
  sha256 arm:   "b76fa675f957cb513f4a8ce4cbcc4c0187c4eabcf5cfa739040d14b3c92cb6be",
         intel: "f1ceaaeebdd937914074d6049ba00028941c4799b389e5480924a1ded30d41f5"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Origin/#{folder}/#{version.major_minor_patch.sub(".", "")}/Brave-Origin-Beta-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Origin/"
  name "Brave Origin Beta"
  desc "Get the Web your way: Best-in-class privacy, with just the features you want"
  homepage "https://brave.com/origin/#beta"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Origin/#{folder}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Brave Origin Beta.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Origin-Beta",
        "~/Library/Caches/BraveSoftware/Brave-Origin-Beta",
        "~/Library/Caches/com.brave.Browser.origin.beta",
        "~/Library/HTTPStorages/com.brave.Browser.origin.beta",
        "~/Library/Preferences/com.brave.Browser.origin.beta.plist",
        "~/Library/Saved Application State/com.brave.Browser.origin.beta.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end
