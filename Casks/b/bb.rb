cask "bb" do
  os macos: "arm64.dmg", linux: "x86_64.AppImage"

  version "0.42.0"

  on_macos do
    sha256 "f975962e590abca6f02852e73a87b4525e7e1fac9f55d3957e8dc28562d3f6fd"

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
    sha256 "a7895f2b989f95fb9eb6b8ad17fcbebd432a5623b3bf5aa2db05e469cd901175"

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
