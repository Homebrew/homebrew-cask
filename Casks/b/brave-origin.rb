cask "brave-origin" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  version "1.92.144.0"
  sha256 arm:   "7991cf9a381fd5acacfc4124c5186cebc1ac3863207d1d9832531ef590cbfa7f",
         intel: "422ea9ce59b19506204b8667d1e1d55aea21b5c1a0835453444e45b0159507f1"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Origin/stable#{folder_arch}/#{version.major_minor_patch.sub(".", "")}/Brave-Origin-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Origin/"
  name "Brave Origin"
  desc "Privacy-focused web browser"
  homepage "https://brave.com/origin"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Origin/stable#{folder_arch}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

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
