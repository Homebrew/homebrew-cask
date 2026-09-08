cask "brave-origin@beta" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  sha256 arm:   "4263496bf3c83fb19a3c17b622543e954d8516989b6f59b1eba8bb562884679b",
         intel: "b0aefd8f837e023b11f02ed8c71ea6a85581f7aec02f012b85ab74d8f6f8cec2"

  on_arm do
    version "1.96.47.0"
  end
  on_intel do
    version "1.96.47.0"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Origin/beta#{folder_arch}/#{version.major_minor_patch.sub(".", "")}/Brave-Origin-Beta-#{arch}.dmg"
  name "Brave Origin Beta"
  desc "Privacy-focused web browser"
  homepage "https://brave.com/origin/#beta"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Origin/beta#{folder_arch}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

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
