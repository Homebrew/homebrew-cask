cask "bb" do
  os macos: "arm64.dmg", linux: "x86_64.AppImage"

  version "0.49.0"
  sha256 arm:          "5bebb0b635c1c8b14e549fe3799152d8a6375bb2e8259be328897e1906f63e17",
         x86_64_linux: "8349ab773715624fec5082739c817d2a15809504699d34b47d3d9dfbe60fc770"

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
