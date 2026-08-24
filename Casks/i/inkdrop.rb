cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "6.1.3"
  sha256 arm:   "02a933ec42ffa016841b743c589e6190c85dfa6506345d957bd3c37b3f4450cd",
         intel: "484f7def44c8e8732cb6bdf02272d77d69f6c87b31c6a356d026a8823151f5eb"

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
