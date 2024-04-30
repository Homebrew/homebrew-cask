cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta31"
  sha256 arm:   "0b6fddc89c09e8dc642ca7ee6e15552c6f28c462385af14e126ebc2097689026",
         intel: "c3d3f6a7768c40512ea746c234c194eb46ffbb6128e7ee169c000d24dc4514b0"

  url "https://releases.threema.ch/desktop/#{version}/threema-desktop-v#{version}-macos-#{arch}.dmg"
  name "Threema"
  desc "End-to-end encrypted instant messaging application"
  homepage "https://threema.ch/download-md"

  livecheck do
    url "https://threema.ch/en/download-md"
    regex(/href=.*?threema[._-]desktop[._-]v?(\d+(?:(?:[.-]|(beta))+\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Threema Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop",
    "~/Library/Preferences/ch.threema.threema-desktop.plist",
    "~/Library/Saved Application State/ch.threema.threema-desktop.savedState",
  ]
end
