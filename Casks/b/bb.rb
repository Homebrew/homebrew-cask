cask "bb" do
  os macos: "arm64.dmg", linux: "x86_64.AppImage"

  version "0.43.4"
  sha256 arm:          "bee177cbb980e8e9ed0de7c2c773ece52e9c84c2ccf8f976df70a6b922d30658",
         x86_64_linux: "b1ca6e2bbd4d47ea6686a27cb798954d151c88763d2638bb4662d3eaee619302"

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
