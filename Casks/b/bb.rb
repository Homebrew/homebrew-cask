cask "bb" do
  os macos: "arm64.dmg", linux: "x86_64.AppImage"

  version "0.39.0"

  on_macos do
    sha256 "daeba64135a93f95c8c3a7105c8e16d31b5ef7c98a3ccbc30ea45c570191831d"

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
    sha256 "d5055ad992b293bf6f0f404413522fec91e14767f653b5039fd4d92ec55642c7"

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
