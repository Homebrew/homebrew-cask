cask "fedistar" do
  url_end = on_system_conditional macos: "universal.dmg", linux: "amd64.AppImage"

  version "1.13.2"

  on_macos do
    sha256 "e2f2f520918abe3c730c78f5a3e4bf0acab57aa58f3db6c9551260ddee14f9ef"

    depends_on macos: :sonoma

    app "fedistar.app"

    zap trash: [
      "~/Library/Application Scripts/*.net.fedistar",
      "~/Library/Application Scripts/net.fedistar",
      "~/Library/Containers/net.fedistar",
      "~/Library/Group Containers/*.net.fedistar",
    ]
  end
  on_linux do
    sha256 "77186bae503402286b9ef389d3503e18db6395552e4843460c67f0e7d90d8e95"

    depends_on arch: :x86_64

    app_image "fedistar_#{version}_amd64.AppImage", target: "Fedistar.AppImage"
  end

  url "https://github.com/h3poteto/fedistar/releases/download/v#{version}/fedistar_#{version}_#{url_end}",
      verified: "github.com/h3poteto/fedistar/"
  name "fedistar"
  desc "Multi-column Mastodon, Pleroma, and Friendica client for desktop"
  homepage "https://fedistar.net/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
