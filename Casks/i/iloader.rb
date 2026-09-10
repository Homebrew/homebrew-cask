cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.3.3"
  sha256 arm:          "9869447506cdbe990944f159f929b906cb71bb1d6d659efc52c8c9ca7675bcbd",
         intel:        "9869447506cdbe990944f159f929b906cb71bb1d6d659efc52c8c9ca7675bcbd",
         arm64_linux:  "84a3c95a0d17a56732d6c8202ac70207575cb8133c29ea95f8818e298b5b8e2a",
         x86_64_linux: "a9e841259cfec05065dad31428dd1b27b6c3321f10d310cb0315082836b83b7e"

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
