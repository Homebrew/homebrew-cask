cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta46"
  sha256 arm:   "afdc28b174322f32fa6453d3e2f3cdaff41a1d14c7378d7b16255dc3b8f3a98d",
         intel: "690661e157442d8b9d5109ff2f804484f269c3f2720882ae7a8f48ef8fd4aa8d"

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
