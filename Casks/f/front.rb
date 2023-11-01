cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.45.16"
  sha256 arm:   "52ed0b9df9eefa0f2aa97cd867aa4bce0ec6f8b9ffa3516576af98b3f62c5de4",
         intel: "ed0623cf7e548ae4428ad124f9026d6d5ddff56ab22e695eec0411bfba53b05f"

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
