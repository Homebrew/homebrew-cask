cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.82.3"
  sha256 arm:   "bb123cdda68b5d500e6dd29ce71511c33c17ff5206803d2b927f15278e74cc12",
         intel: "4e37e43f5bd6ac3502f2cc6de75b7a19071e34b544284dfaa6317df300ac181b"

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
