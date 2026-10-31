cask "netron" do
  version "9.3.4"
  sha256 "5675c292af6b808d826666da4f9fbb8ffd1cd90e447701b75d08c4bccb3cc219"

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
