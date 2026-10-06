cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.3.6"
  sha256 arm:          "b21162fd29b90b6c60ad34fe1bc01cfef62c4690c0406e5779bfdd7ca6038a5a",
         intel:        "b21162fd29b90b6c60ad34fe1bc01cfef62c4690c0406e5779bfdd7ca6038a5a",
         arm64_linux:  "59ddeb30b7d7d856e6c4c5662f01568cd99bcbf5f39bf0d98ea3e4785cdc6318",
         x86_64_linux: "5f6c8e8dbfc9ab75526200d5a3588a7ba771e873ef217f1ff14b12c38e92b58f"

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
