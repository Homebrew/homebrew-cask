cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.81.2"
  sha256 arm:   "bbd4d98d45011b3440054ea90d2c1dd7216335ff1e6105ffba6902e1a3abb7af",
         intel: "a0f908bda38687944bf65791432a89d795b7934c312a44b1c804dc6fce796c69"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}-#{arch}.zip"
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
    "~/Library/Application Scripts/com.frontapp.Front.ShareExtension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.frontapp.front.sfl*",
    "~/Library/Application Support/Front",
    "~/Library/Caches/Front",
    "~/Library/Containers/com.frontapp.Front.ShareExtension",
    "~/Library/FrontBoard",
    "~/Library/Logs/Front",
    "~/Library/Preferences/com.frontapp.Front.plist",
    "~/Library/Saved Application State/com.frontapp.Front.savedState",
  ]
end
