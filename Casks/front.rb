cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.42.12"
  sha256 arm:   "426bb3d15b572391e099866918c87d131c157b8d327742abc262df3747a14a19",
         intel: "a8a85cfba9e4bd4e7c439f4c84e2f0f48e913a43b6fd7cdca7f936476c3dbd05"

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
