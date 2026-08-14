cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.5.1"

  on_macos do
    sha256 arm:   "bff5f071616a37952efc2ab6bd2c7415cd73dec6afe6fbc85021835c010064bb",
           intel: "1c12272bd4a0b30df48f92dd8466b7e37b55d4971fd8030a828161d0d2c87b5d"

    depends_on macos: :ventura

    app "Blockstream.app"

    zap trash: [
      "~/Library/Application Support/Blockstream/Green",
      "~/Library/Caches/Blockstream/Green",
    ]
  end
  on_linux do
    sha256 "37e6b871e7444fb84111dc51e13e50c6a063281faf57373e29cf2e1ef33c610d"

    depends_on arch: :x86_64

    app_image "Blockstream-#{arch}.AppImage", target: "Blockstream.AppImage"
  end

  url "https://github.com/Blockstream/green_qt/releases/download/release_#{version}/Blockstream-#{arch}.#{url_end}",
      verified: "github.com/Blockstream/green_qt/"
  name "Blockstream Green"
  desc "Multi-platform Bitcoin and Liquid wallet"
  homepage "https://blockstream.com/green/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
