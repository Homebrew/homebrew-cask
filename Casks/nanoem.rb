cask "nanoem" do
  version "34.5.0"
  sha256 "e42bd5792cfdbe13b6081ea2429af0070d5440aff2447ddeade9167e125a89f8"

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
