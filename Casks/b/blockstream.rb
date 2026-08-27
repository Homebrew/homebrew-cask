cask "blockstream" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.5.3"

  on_macos do
    sha256 arm:   "38d50624aa55ef6e8c08362711af99781643135b87b0479b0c5808711a8fa0d9",
           intel: "258904592f787d48e71bb2829695b8079d2f0af46ebd1e9fde74e4b8805ad70c"

    depends_on macos: :ventura

    app "Blockstream.app"

    zap trash: [
      "~/Library/Application Support/Blockstream/Green",
      "~/Library/Caches/Blockstream/Green",
    ]
  end
  on_linux do
    sha256 "9e7091654abb460cd8a9fd3fa72324ab5e3422a91f483d89425d9e42325ee7ac"

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
