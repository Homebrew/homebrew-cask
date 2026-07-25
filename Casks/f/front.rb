cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.77.0"
  sha256 arm:   "e8fb367c9746626f08afe7a7d0f40fb458097d028281daa1b65d3ba29d2f6af8",
         intel: "9d6592b7d337e3928a7a30f12f28c3f13e0cb4f9ee0e94f642d32b5bba373c45"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip",
      verified: "dl.frontapp.com/desktop/builds/"
  name "Front"
  desc "Customer communication platform"
  homepage "https://front.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Front.app"

  zap trash: [
    "~/Library/Application Support/Front",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
