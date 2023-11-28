cask "bettermouse" do
  version "1.5.4242"
  sha256 "8a1f7477b940ce1dfc18eeceebacb68e01fec38395da98bd840b6a1d5a1925db"

  url "https://better-mouse.com/wp-content/uploads/BetterMouse.#{version}.zip"
  name "BetterMouse"
  desc "Utility improving 3rd party mouse performance and functionalities"
  homepage "https://better-mouse.com/"

  livecheck do
    url :homepage
    regex(/Version (\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

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
