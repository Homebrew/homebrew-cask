cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "6.0.0"
  sha256 arm:   "5cbf60a36a04e8a8577bb764590cb57aab4007a2927df38e625c75f75d90d15b",
         intel: "255811c23183a2abbfb5ef39c462e92dcb1db7ece08cebcc8a8aed4295f14335"

  url "https://dist.inkdrop.app/releases/inkdrop-#{version}-#{arch}-mac.zip"
  name "Inkdrop"
  desc "Markdown editor"
  homepage "https://www.inkdrop.app/"

  livecheck do
    url "https://dist.inkdrop.app/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Inkdrop.app"

  zap trash: [
    "~/Library/Application Support/inkdrop",
    "~/Library/Caches/info.pkpk.inkdrop",
    "~/Library/Preferences/info.pkpk.inkdrop.helper.plist",
    "~/Library/Preferences/info.pkpk.inkdrop.plist",
    "~/Library/Saved Application State/info.pkpk.inkdrop.savedState",
  ]
end
