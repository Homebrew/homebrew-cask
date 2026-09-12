cask "bb" do
  os macos: "arm64.dmg", linux: "x86_64.AppImage"

  version "0.43.0"
  sha256 arm:          "97bf28bb6a745affd9ed7cb4bc15b28d3a93d5f3b1576d81a676a858af276f95",
         x86_64_linux: "e967c8582d938f5605941eb7371331dcfbbcd233191947615e2f4735ac001b85"

  on_macos do
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
