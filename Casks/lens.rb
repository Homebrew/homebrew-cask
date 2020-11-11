cask "lens" do
  version "3.6.8"
  sha256 "ec00c540bf45e7242fc7f3f4be6b39c77d65f0f917cf1d5c01e87ff326d18f8d"

  # github.com/lensapp/lens/ was verified as official when first introduced to the cask
  url "https://github.com/lensapp/lens/releases/download/v#{version}/Lens-#{version}.dmg"
  appcast "https://github.com/lensapp/lens/releases.atom"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
