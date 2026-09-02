cask "bb" do
  os macos: "arm64.dmg", linux: "x86_64.AppImage"

  version "0.41.0"

  on_macos do
    sha256 "09b6a1e74d36821edc66ab74c7dc6a88d96f7169b0842547d85648fa7513c232"

    depends_on arch: :arm64
    depends_on macos: :monterey

    app "bb.app"

    zap trash: [
          "~/Library/Application Support/bb",
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.bb.desktop.sfl*",
          "~/Library/Preferences/dev.bb.desktop.plist",
        ],
        rmdir: "~/.bb"
  end
  on_linux do
    sha256 "6d15367e4d26d57b58b3062050a2e72eb5973f13f751f15290380307ee6ad910"

    depends_on arch: :x86_64

    app_image "bb-#{version}-x86_64.AppImage", target: "bb.AppImage"
  end

  url "https://github.com/get-bb/bb/releases/download/desktop-v#{version}/bb-#{version}-#{os}"
  name "bb"
  desc "IDE for running and orchestrating coding agents"
  homepage "https://getbb.app/"

  livecheck do
    url :url
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
