cask "front" do
  arch arm: "arm64", intel: "x64"

  version "3.80.1"
  sha256 arm:   "e4848412e260f36f46df91cf417f67265f79cc5f6204b880990d1ca268aa9597",
         intel: "5257d9070369e67c5e187281a255023916bd3a7799148cb1d42c12770c732fc5"

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
