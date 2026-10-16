cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.3.9"
  sha256 arm:          "69afdf09877c02fddbef99f8ba187820857fe46dff906aa395122c1d81859757",
         intel:        "69afdf09877c02fddbef99f8ba187820857fe46dff906aa395122c1d81859757",
         arm64_linux:  "69808fe86f62e96ef64c559f219c4c89f324f722a9edf82c50fa400906c5c7b4",
         x86_64_linux: "865fb35d7da9fefe641173acc962e2aa6fe789a75c84063836ef4fe6c7e3e9b1"

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
