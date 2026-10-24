cask "bb" do
  os macos: "arm64.dmg", linux: "x86_64.AppImage"

  version "0.47.1"
  sha256 arm:          "0097b2fbb035978be28a184d52ff5fad42986d9ba6a1420ed9c692673cc09108",
         x86_64_linux: "ac40a4fdf9a065ff127d39c3f8394aed2e1c79981b9f1ba416dd7bd97175d2c0"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :ventura

    app "bb.app"

    zap trash: [
          "~/Library/Application Support/bb",
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.bb.desktop.sfl*",
          "~/Library/Preferences/dev.bb.desktop.plist",
        ],
        rmdir: "~/.bb"
  end
  on_linux do
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
