cask "netron" do
  version "9.3.8"
  sha256 "10db56b8ca9d8fd2417fbe4a7a0ba892694cf7d20b37f7204bc05d77ddb5c9d0"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualiser for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true
  depends_on macos: :ventura

  app "Netron.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lutzroeder.netron.sfl*",
    "~/Library/Application Support/Netron",
    "~/Library/Preferences/com.lutzroeder.netron.plist",
    "~/Library/Saved Application State/com.lutzroeder.netron.savedState",
  ]
end
