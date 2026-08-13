cask "brave-browser@nightly" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "nightly-arm64", intel: "nightly"

  sha256 arm:   "558b99d15af29e7c2d674ea208610587db4dacdc0a358592dbd2aef5d6c0030b",
         intel: "a138702be9f5d0cbff0ae20c2fbef7e189278ec87a93d6760b4b9b31e74cd655"

  on_arm do
    version "1.95.65.0"
  end
  on_intel do
    version "1.95.65.0"
  end

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
  depends_on macos: :ventura

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
