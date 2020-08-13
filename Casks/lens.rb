cask "lens" do
  version "3.5.2"
  sha256 "172ff2657453d001104e1e39ad384d66b0e16e3b1e6ecdc176e19449aa0bb0d9"

  # github.com/lensapp/lens/ was verified as official when first introduced to the cask
  url "https://github.com/lensapp/lens/releases/download/v#{version}/Lens-#{version}.dmg"
  appcast "https://github.com/lensapp/lens/releases.atom"
  name "Lens"
  homepage "https://k8slens.dev/"

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
