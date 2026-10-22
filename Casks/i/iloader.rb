cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.4.0"
  sha256 arm:          "171fc0aee7e42e6e5db3174ed2a8940d53ef2f1dd475090579e1740d3b139d29",
         intel:        "171fc0aee7e42e6e5db3174ed2a8940d53ef2f1dd475090579e1740d3b139d29",
         arm64_linux:  "d602973a884051508d2a324b66db8245fc3921a172cea7157f701fb95a489fca",
         x86_64_linux: "cb4105f2950f489cb6cc1e4ce2059f50a78930e6e8c90079a114cbe1ba2aa5ca"

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
