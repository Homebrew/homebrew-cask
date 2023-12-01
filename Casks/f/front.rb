cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.47.1"
  sha256 arm:   "7e04bc3c9a104186410b76a6f2c6229ca3a5d02c3622c462776e5d59d50ae14b",
         intel: "96bec8e66ea42a9c0c089b158ed63a8a86c93564009db7fc67edaf2062eac61e"

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
