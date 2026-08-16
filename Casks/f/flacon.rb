cask "flacon" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "_", linux: "-"
  url_end = on_system_conditional macos: ".dmg", linux: "-#{arch}.AppImage"

  version "13.0.1"

  on_macos do
    sha256 "e185f6be7896bb2679a51dc7676b8a63a45d45648c7819bb21ffeb23d5125519"

    depends_on macos: :big_sur

    app "Flacon.app"

    zap trash: [
      "~/Library/Preferences/com.flacon.flacon.plist",
      "~/Library/Preferences/com.flacon.gui_qt5.plist",
      "~/Library/Preferences/io.github.flacon.plist",
      "~/Library/Saved Application State/io.github.flacon.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "98f0f52388d54a18dfb9e7f43497203db5bf269e00b58303cb98e6a108ea2d14",
           x86_64_linux: "00d45b0f3475a1c41ea394d0bb965d7abc731a91ddbdd252fe083bdd9dcd5064"

    app_image "Flacon-#{version}-#{arch}.AppImage", target: "Flacon.AppImage"
  end

  url "https://github.com/flacon/flacon/releases/download/v#{version}/Flacon#{os}#{version}#{url_end}",
      verified: "github.com/flacon/flacon/"
  name "Flacon"
  desc "Open source audio file encoder"
  homepage "https://flacon.github.io/"

  livecheck do
    url "https://flacon.github.io/download/feed.xml"
    strategy :sparkle
  end

  auto_updates true
end
