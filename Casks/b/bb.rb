cask "bb" do
  os macos: "arm64.dmg", linux: "x86_64.AppImage"

  version "0.50.1"
  sha256 arm:          "94388d439f6a1b81b00e5e1819c031f112b5188115cd23fb91f1d3c9da1e4a1f",
         x86_64_linux: "7063d187817abaff710afaba039bed78923e464a9006a39231ff04d1764408a8"

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

    zap trash: "~/.config/bb",
        rmdir: "~/.bb"
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
