cask "bb" do
  os macos: "arm64.dmg", linux: "x86_64.AppImage"

  version "0.48.1"
  sha256 arm:          "b6055f54db0ed278768f08a774eb3da4ebfe2855164164702062753fe095e408",
         x86_64_linux: "df04e14d4735ed0b0922bb6b16a833bece5f45356a63de7d4d847bf7b1d2ced1"

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
