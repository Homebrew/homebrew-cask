cask "netron" do
  version "9.2.6"
  sha256 "f6ec6fe08c5f4d95ab1b6f8f57254a7bf3d37e1cf41f9ad00dcf25efe832b6c5"

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  name "Netron"
  desc "Visualiser for neural network, deep learning, and machine learning models"
  homepage "https://github.com/lutzroeder/netron"

  auto_updates true
  depends_on macos: :ventura

  app "Netron.app"

  zap trash: [
    "~/Library/Application Support/Netron",
    "~/Library/Preferences/com.lutzroeder.netron.plist",
    "~/Library/Saved Application State/com.lutzroeder.netron.savedState",
  ]
end
