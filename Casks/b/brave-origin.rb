cask "brave-origin" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  version "1.97.56.0"
  sha256 arm:   "f4739e6a4879c683eec0f04810e68b2fe9259f1e3e89f431258eccb1a58eb739",
         intel: "824f76c3c4d4c66160ed85d2bef3db71039d7bbe6ffc5d7ca456c130e1e8513d"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Origin/stable#{folder_arch}/#{version.major_minor_patch.sub(".", "")}/Brave-Origin-#{arch}.dmg"
  name "Brave Origin"
  desc "Privacy-focused web browser"
  homepage "https://brave.com/origin"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Origin/stable#{folder_arch}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

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
