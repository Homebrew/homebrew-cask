cask "lens" do
  version "3.6.9"
  sha256 "292ef51fb8ab628e9e81aaa20a9e6c585bd1407d5dbefb8ebf50406d95e2c929"

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
