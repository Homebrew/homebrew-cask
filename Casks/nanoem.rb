cask "nanoem" do
  version "34.6.0"
  sha256 "92f22ad3f29ce07f7329a62ad8382c17c7309973fc974699460320c7c54a88d8"

  url "https://github.com/hkrn/nanoem/releases/download/v#{version}/nanoem-v#{version}-macos.zip"
  name "nanoem"
  desc "Cross-platform MMD (MikuMikuDance) compatible implementation"
  homepage "https://github.com/hkrn/nanoem"

  container nested: "nanoem-v#{version}-Darwin.dmg"

  app "nanoem.app"

  zap trash: [
    "~/Library/Application Support/com.github.nanoem",
    "~/Library/Caches/com.github.nanoem",
    "~/Library/HTTPStorages/com.github.nanoem",
    "~/Library/Preferences/com.github.nanoem.plist",
    "~/Library/Saved Application State/com.github.nanoem.savedState",
  ]
end
