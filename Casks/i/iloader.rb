cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.3.10"
  sha256 arm:          "302ea6cb1434d4b0a9468024c629e680e739ed858b9cdb16f164efc8d63b37d3",
         intel:        "302ea6cb1434d4b0a9468024c629e680e739ed858b9cdb16f164efc8d63b37d3",
         arm64_linux:  "d5b6a0b8c5a930e8d46a7239e05790bf90af4d1c04adcd4e82c684a9c018357c",
         x86_64_linux: "534cf0a434ba1e101c7c7b0edf925eb91e1f2dd2d653d1491023c9e0317c2779"

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
