cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "6.1.4"
  sha256 arm:   "b8d0d93991baf817689239aa2566504578a68b21b063a2f561e2ea061fc77c0c",
         intel: "84b8a4597be453c2cdecc833af1ab45658da86bad73343a7fefcb18ef2d5f887"

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
