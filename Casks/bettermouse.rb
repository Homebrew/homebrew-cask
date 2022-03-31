cask "bettermouse" do
  version "1.2.833"
  sha256 "4438501fff0fb19644ddcfe4bfa32d599b7e58921f4402e5631d71aa9d9e7ad4"

  url "https://better-mouse.com/wp-content/uploads/BetterMouse.#{version}.zip"
  name "BetterMouse"
  desc "Utility improving 3rd party mouse performance and functionalities"
  homepage "https://better-mouse.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Version (\d+(?:\.\d+)+)/)
  end

  app "BetterMouse.app"

  uninstall quit: bundle_id = "com.naotanhaocan.BetterMouse"

  zap trash: %W[
    ~/Library/Application Support/BetterMouse
    ~/Library/Caches/#{bundle_id}
    ~/Library/HTTPStorages/#{bundle_id}*
    ~/Library/Preferences/#{bundle_id}.plist
    ~/Library/Saved Application State/#{bundle_id}.savedState
  ]
end
