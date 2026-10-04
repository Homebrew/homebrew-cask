cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.3.5"
  sha256 arm:          "1a968a7e8d82cdf8f3536c85ebdb1a9959d887d912071609f15d2e69f76cb269",
         intel:        "1a968a7e8d82cdf8f3536c85ebdb1a9959d887d912071609f15d2e69f76cb269",
         arm64_linux:  "79370312056c8b4ee96558fe8b9d2d8d074b4ad0ea67a69a93e3014aaf95c1b8",
         x86_64_linux: "393a7bd9e5cd321b60c5154483bbe416999092a3014cfc15d3c9fe7da1af0d58"

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
