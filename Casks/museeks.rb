cask "museeks" do
  version "0.12.0"
  sha256 "0d7978aa719f1cdadd2ed50f19c55a2948eef9fb813234b94e95ed7e01037e64"

  url "https://github.com/martpie/museeks/releases/download/#{version}/museeks.dmg",
      verified: "github.com/martpie/museeks/"
  name "Museeks"
  desc "Music player"
  homepage "https://museeks.io/"

  app "Museeks.app"

  zap trash: [
    "~/Library/Application Support/museeks",
    "~/Library/Saved Application State/com.electron.museeks.savedState",
  ]
end
