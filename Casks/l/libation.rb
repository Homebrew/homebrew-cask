cask "libation" do
  arch arm: "arm64", intel: "x64"

  version "13.1.2"

  sha256 arm:   "b372cde029f1f81c6465b1920a7c5a392a7791243cd30ebf39dab172ec82cbf5",
         intel: "sha256:cdfd9df87a383d8af7f1b9f5b4e3d7e089ae3909d458e2b9d8a90c8bb831f68f"

  url "https://github.com/rmcrackan/Libation/releases/download/v#{version}/Libation.#{version}-macOS-chardonnay-#{arch}.dmg"
  name "Libation"
  desc "Libation is a free, open-source application for downloading and managing your Audible audiobooks. It decrypts your library, removes DRM, and lets you own your audiobooks forever."
  homepage "https://getlibation.com"

  auto_updates true

  app "Libation.app"

  zap trash: [
    "~/Library/Application Support/Libation",,
    "~/Library/Preferences/org.libation.macos.plist",
  ]
end
