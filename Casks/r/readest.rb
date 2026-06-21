cask "readest" do
  arch arm: "aarch64", intel: "amd64"

  version "0.11.12"

  url_end = on_system_conditional linux: "#{arch}.AppImage", macos: "universal.dmg"

  url "https://github.com/readest/readest/releases/download/v#{version}/Readest_#{version}_#{url_end}",
      verified: "github.com/readest/readest/"
  name "Readest"
  desc "Ebook reader"
  homepage "https://readest.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    sha256 "33f7d8851a78aeb8043d5baec3810055c19079cb0c033ceb217c63ca46ffbd92"

    auto_updates true
    depends_on macos: :monterey

    app "Readest.app"

    zap trash: [
      "~/Library/Application Support/com.bilingify.readest",
      "~/Library/Caches/com.bilingify.readest",
      "~/Library/Caches/readest",
      "~/Library/Preferences/com.bilingify.readest.plist",
      "~/Library/WebKit/com.bilingify.readest",
      "~/Library/WebKit/readest",
    ]
  end

  on_linux do
    sha256 arm64_linux:  "5c28053d7bc54a78924686b2124469b858c20ba148e6ca5fe77f5de6c85cd237",
           x86_64_linux: "80cba73dc94dcb0a5f4d79f5e68c5c388b6600460221f42c292337cee240ad55"

    app_image "Readest_#{version}_#{arch}.AppImage", target: "Readest.AppImage"
  end
end
