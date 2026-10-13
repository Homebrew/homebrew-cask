cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.3.7"
  sha256 arm:          "eda49f3470da70098c4c35de872cba56562a5da1f4528aa8a953cdb102668939",
         intel:        "eda49f3470da70098c4c35de872cba56562a5da1f4528aa8a953cdb102668939",
         arm64_linux:  "6af7b8d71fb7cb7fd890e540341fa1d24007ee688da4023f68ae175bf84e5986",
         x86_64_linux: "45d95d131a7964b7dbd0c933914a8aea2d55060b702c93ef84950f2940de8aca"

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
