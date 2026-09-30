cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "6.1.5"
  sha256 arm:   "96c9a1e636a64814f3e3e6b32e5f612d981b7d99284ce8ef938c8d9a4b46bf49",
         intel: "41365e04b23dad589b10b863ffd66aed4fc799fb47757b020c0128cb0d896400"

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
