cask "bb" do
  os macos: "arm64.dmg", linux: "x86_64.AppImage"

  version "0.40.0"

  on_macos do
    sha256 "bb6875f8b4ead1778693db589c8af1be933f0943dd6aa78479f889a084ae0a0a"

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
    sha256 "bd3671240d1b1b298419c0236b36fb20c3e35bf2e0fbdce52903246400365aed"

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
