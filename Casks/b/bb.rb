cask "bb" do
  os macos: "arm64.dmg", linux: "x86_64.AppImage"

  version "0.44.0"
  sha256 arm:          "9b162278d95f3af1e52e59e8741304bfe73a15b667ef80bffc0399b53ddca5d2",
         x86_64_linux: "247f73ee844b6b6378916b788ea876aa0c661c54fe736ba6971f0d1c8d12cda5"

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
