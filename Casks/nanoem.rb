cask "nanoem" do
  version "34.7.0"
  sha256 "4549f4b91e7b4302d4a61e2e171ca02795873a89f01ec7ebd93bf13767d812c8"

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
