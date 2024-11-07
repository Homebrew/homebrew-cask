cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.61.1"
  sha256 arm:   "1ffdd9835155993d69bb43059d5ebfef5240f09c5d2de9eefc23d5974053bbfc",
         intel: "9bee4a147a0224f4ba39803e8138382920f44b84e7ef5ee36cec34b21b296dd1"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds/"
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
