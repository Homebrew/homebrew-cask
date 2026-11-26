cask "brave-browser@beta" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "beta-arm64", intel: "beta"

  sha256 arm:   "a13d4d3f21a147f1acd814b19f137bd624b39e5498a1635eb527df4baf4feb14",
         intel: "71921f34b9175f48c71225b430f5ba5b6b01ecb25c65d1a722c5f6997b133d18"

  on_arm do
    version "1.101.57.0,201.57"
  end
  on_intel do
    version "1.101.57.0,201.57"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.csv.second}/Brave-Browser-Beta-#{arch}.dmg"
  name "Brave Beta"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-beta/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

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
