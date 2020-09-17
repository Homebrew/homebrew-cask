cask "lens" do
  version "3.6.2"
  sha256 "b18e10c53f33c805ad57abec73476b4aea9de34dc48c0e8ab17a65689fa73a69"

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
