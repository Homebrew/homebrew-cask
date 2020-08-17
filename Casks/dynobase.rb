cask "dynobase" do
  version "1.0.0"
  sha256 "3d99ded7b37bbbf0df77a9f20379fa0140f57c3ec7de154f79e61e0dc42ce04a"

  # github.com/Dynobase/dynobase was verified as official when first introduced to the cask
  url "https://github.com/Dynobase/dynobase/releases/download/#{version}/Dynobase-#{version}.dmg"
  appcast "https://github.com/Dynobase/dynobase/releases.atom"
  name "Dynobase"
  homepage "https://dynobase.dev/"

  app "Dynobase.app"

  zap trash: [
    "~/Library/Application Support/dynobase",
    "~/Library/Saved Application State/com.rwilinski.dynobase.savedState",
  ]
end
