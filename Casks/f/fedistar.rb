cask "fedistar" do
  url_end = on_system_conditional macos: "universal.dmg", linux: "amd64.AppImage"

  version "1.13.1"

  on_macos do
    sha256 "12d6249bf04ce2123757d81ca0ca6b5feea3afddf7855d738028a3b68c8ad41b"

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
    sha256 "8b3ef80965207a471d8cac6f4b92b205742d1ead04e9f67b862b51e068241f35"

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
