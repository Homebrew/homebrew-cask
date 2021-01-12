cask "autodmg" do
  version "1.10b587"
  sha256 "b390c45c94c018395408e60927f6609bf40888d8a258090c6ec6f130e8ca0f69"

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast "https://github.com/MagerValp/AutoDMG/releases.atom"
  name "AutoDMG"
  desc "App for creating deployable system images from a system installer"
  homepage "https://github.com/MagerValp/AutoDMG"

  depends_on macos: ">= :sierra"

  app "AutoDMG.app"

  zap trash: [
    "~/Library/Application Support/AutoDMG",
    "~/Library/Caches/se.gu.it.AutoDMG",
    "~/Library/Logs/AutoDMG",
    "~/Library/Preferences/se.gu.it.AutoDMG.plist",
  ]
end
