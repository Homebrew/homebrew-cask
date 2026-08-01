cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.3.0"

  on_macos do
    sha256 "8e0da15ca39a17739f019a373aec4ba593fa146e80e4905be4c5c95b9bbd36d7"

    auto_updates true

    app "iloader.app"

    zap trash: [
      "~/Library/Application Support/me.nabdev.iloader",
      "~/Library/Caches/me.nabdev.iloader",
      "~/Library/WebKit/me.nabdev.iloader",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "57f83429110d93172c1efe6b7996474a52a8f120dab75447baf325a20a605b8a",
           x86_64_linux: "290f0d410461c999a1dff57f3415f34d772b6ee66db4eba6aee6454411a88481"

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
