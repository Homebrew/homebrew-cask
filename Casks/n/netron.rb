cask "netron" do
  version "8.6.4"
  sha256 "7aaeadcae137e34e95bd2d1e73f4b4836d66e2bbeae39d68270aa8857af98518"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualiser for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Netron.app"

  zap trash: [
    "~/Library/Application Support/Netron",
    "~/Library/Preferences/com.lutzroeder.netron.plist",
    "~/Library/Saved Application State/com.lutzroeder.netron.savedState",
  ]
end
