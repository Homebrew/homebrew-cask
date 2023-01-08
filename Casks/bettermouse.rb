cask "bettermouse" do
  version "1.4.2970"
  sha256 "1ef6bfde6e59d4da38780ab55a7f354183c2c3ab47c952df6f6a16c67750e24a"

  url "https://better-mouse.com/wp-content/uploads/BetterMouse.#{version}.zip"
  name "BetterMouse"
  desc "Utility improving 3rd party mouse performance and functionalities"
  homepage "https://better-mouse.com/"

  livecheck do
    url :homepage
    regex(/Version (\d+(?:\.\d+)+)/i)
  end

  app "BetterMouse.app"

  uninstall quit: bundle_id = "com.naotanhaocan.BetterMouse"

  zap trash: [
    "~/Library/Application Support/BetterMouse",
    "~/Library/Caches/#{bundle_id}",
    "~/Library/HTTPStorages/#{bundle_id}*",
    "~/Library/Preferences/#{bundle_id}.plist",
    "~/Library/Saved Application State/#{bundle_id}.savedState",
  ]
end
