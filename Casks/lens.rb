cask "lens" do
  version "3.6.3"
  sha256 "b1656bcc7f67536ee553764f99f10ce5977529c59ce82faea4be5e0159e19a3a"

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
