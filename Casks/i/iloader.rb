cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.3.4"
  sha256 arm:          "dca13c4b6e2536d2304c1b4b963ac412520353bf853b1c8d38b84fa5d58afd69",
         intel:        "dca13c4b6e2536d2304c1b4b963ac412520353bf853b1c8d38b84fa5d58afd69",
         arm64_linux:  "9cfcf140d97a4c4e80aaa44563a1feda99fa879710f691705e57d1d41421c0b9",
         x86_64_linux: "bdfd3280278face47570c8950860405edfc31b092565413d1055e34aa2a4b546"

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
