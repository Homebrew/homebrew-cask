cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.50.2"
  sha256 arm:   "2ec01dc19cbfe161f30979eaa876613594c63f3e1593e6556006e25ceca0c76b",
         intel: "a0c902c5975f2dbc320d5c50a9c4b54172c8a43ed528fee66bd82ff1ccdfc30c"

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
