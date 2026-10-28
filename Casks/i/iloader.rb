cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.4.1"
  sha256 arm:          "51b1de6b498d4dc5657bffc0ba218e55693e19715edc4b671217dd7a0c54445b",
         intel:        "51b1de6b498d4dc5657bffc0ba218e55693e19715edc4b671217dd7a0c54445b",
         arm64_linux:  "dc3027186c3da811aa1f421f49548b3deb26d4fc950905f8b3aae1fc8c05f8fd",
         x86_64_linux: "defa76e4fc3e7cfa2e60888288e14d076e6a99cc50b38da2d86562817bcd4663"

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
