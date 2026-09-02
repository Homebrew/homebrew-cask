cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.3.1"

  on_macos do
    sha256 "91dc2b658fc1f4921dfb086e7799087153b48fd5925dad435fa90e564222298b"

    auto_updates true

    app "iloader.app"

    zap trash: [
      "~/Library/Application Support/me.nabdev.iloader",
      "~/Library/Caches/me.nabdev.iloader",
      "~/Library/WebKit/me.nabdev.iloader",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "01a333c3b3cc902c17677a387852c12bad6e600b4ad294d91e3464a4dd24a1bb",
           x86_64_linux: "0fe37ee9f9ebe3616bba745214248dc2d3f9ffedc4a8241706cc95d963813652"

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
