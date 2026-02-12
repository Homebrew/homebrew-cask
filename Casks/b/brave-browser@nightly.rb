cask "brave-browser@nightly" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "nightly-arm64", intel: "nightly"

  version "1.89.22.0"
  sha256 arm:   "88243c0ca21f9895be7cbc40d172aaea8085da05c6b4383b5557d019c52a5f04",
         intel: "ce7819e3b2328994f031efc6f492072d2243c9a992cc2e2b0a61343fe4409f60"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.major_minor_patch.sub(".", "")}/Brave-Browser-Nightly-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave Nightly"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/download-nightly/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Brave Browser Nightly.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Browser-Nightly",
        "~/Library/Caches/BraveSoftware/Brave-Browser-Nightly",
        "~/Library/Caches/com.brave.Browser.nightly",
        "~/Library/HTTPStorages/com.brave.Browser.nightly",
        "~/Library/Preferences/com.brave.Browser.nightly.plist",
        "~/Library/Saved Application State/com.brave.Browser.nightly.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end
