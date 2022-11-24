cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.38.13"
  sha256 arm:   "2fff79f1fb37d634c2316855e02cfdd4be4dbc25f9f1811ab49abcdb379cac57",
         intel: "45b749e9cf26ac48c71a622274e8055f3284033a24ebc7b1b82518c93bf10441"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
