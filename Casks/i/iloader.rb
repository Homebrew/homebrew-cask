cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.3.2"
  sha256 arm:          "5569719659f1bf8dce2df5603a927ab1e3cce99e4363f478caf193179d3ca189",
         intel:        "5569719659f1bf8dce2df5603a927ab1e3cce99e4363f478caf193179d3ca189",
         arm64_linux:  "4ce31c41eca9f86c529023f19f1e7fd9b70292976f42760703819dd1c590da28",
         x86_64_linux: "607b39849dfd04799118fcbb6256c74bb374651fd11d01436e99ea6d5b12611a"

  on_macos do
    auto_updates true

    app "iloader.app"

    zap trash: [
      "~/Library/Application Support/me.nabdev.iloader",
      "~/Library/Caches/me.nabdev.iloader",
      "~/Library/WebKit/me.nabdev.iloader",
    ]
  end
  on_linux do
    app_image "iloader-linux-#{arch}.AppImage", target: "iloader.AppImage"
  end

  url "https://github.com/nab138/iloader/releases/download/v#{version}/#{os}"
  name "iloader"
  desc "iOS Sideloading Companion"
  homepage "https://iloader.app/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
