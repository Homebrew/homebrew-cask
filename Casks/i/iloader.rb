cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.3.8"
  sha256 arm:          "172797dd37a7e5effd34b0d1c8c80a65f604a17a202c84a5b8438f2caa0fb3ae",
         intel:        "172797dd37a7e5effd34b0d1c8c80a65f604a17a202c84a5b8438f2caa0fb3ae",
         arm64_linux:  "5f9b7b6e2587835c500bddb5beb09b74ce44f960d3455e70fb297454022f410f",
         x86_64_linux: "90d8d4eefe47f59a1a93d0cd989b47f0ae7e21db6f75878f81bfac2f5ce6bf23"

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
