cask "bettermouse" do
  version "1.6,7544"
  sha256 "f7668acc89bfd18dc7b9f2ceea53ed127fc123567e3070095cee2997c92c3850"

  url "https://better-mouse.com/wp-content/uploads/BetterMouse.#{version.csv.first}.#{version.csv.second}.zip"
  name "BetterMouse"
  desc "Utility improving 3rd party mouse performance and functionalities"
  homepage "https://better-mouse.com/"

  livecheck do
    url "https://better-mouse.com/wp-content/uploads/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
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
