cask "affine" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: ".zip", linux: ".appimage"

  version "0.27.4"

  on_macos do
    sha256 arm:   "1139f5788f40e3f0552416d8f57615d1c2750c5f184a2a1b754dde9a4d0077f6",
           intel: "0db7851f16082a35db4b990fa6fff04717d745b81c2a202eb1d30d596099c63b"

    depends_on macos: :monterey

    app "AFFiNE.app"

    zap trash: [
      "~/Library/Application Support/AFFiNE",
      "~/Library/Logs/AFFiNE",
      "~/Library/Preferences/pro.affine.app.plist",
      "~/Library/Saved Application State/pro.affine.app.savedState",
    ]
  end
  on_linux do
    sha256 "102ff093ea3af7067893e76ae85b8a5d5818aa92c8785d399312bd8f468f5cac"

    depends_on arch: :x86_64

    app_image "affine-#{version}-stable-linux-#{arch}.appimage", target: "AFFiNE.AppImage"
  end

  url "https://github.com/toeverything/AFFiNE/releases/download/v#{version}/affine-#{version}-stable-#{os}-#{arch}#{url_end}",
      verified: "github.com/toeverything/AFFiNE/"
  name "AFFiNE"
  desc "Note editor and whiteboard"
  homepage "https://affine.pro/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
