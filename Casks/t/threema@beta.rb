cask "threema@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta42"
  sha256 arm:   "3ed6224d2dde2d3f2b20510ae4ea42dbdf6b77ed6e0c81ae8953bfbe7c44e9e2",
         intel: "2990cc5bbe7692c01f6a552a5839d9f3be39cbcfd244424f44a596700eb27c6f"

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
