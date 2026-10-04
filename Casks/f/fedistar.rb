cask "fedistar" do
  url_end = on_system_conditional macos: "universal.dmg", linux: "amd64.AppImage"

  version "1.13.3"
  sha256 arm:          "b870479014611fcb795673cfcb9321a9a805375b28f6e3a931bbacc85c5d7591",
         intel:        "b870479014611fcb795673cfcb9321a9a805375b28f6e3a931bbacc85c5d7591",
         x86_64_linux: "88d166524444179f92796c8483d3b319927b72acd2a94d78fab273ab894e542b"

  on_macos do
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
    depends_on arch: :x86_64

    app_image "fedistar_#{version}_amd64.AppImage", target: "Fedistar.AppImage"
  end

  url "https://github.com/h3poteto/fedistar/releases/download/v#{version}/fedistar_#{version}_#{url_end}"
  name "fedistar"
  desc "Multi-column Mastodon, Pleroma, and Friendica client for desktop"
  homepage "https://fedistar.net/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
