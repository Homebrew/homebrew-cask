cask "drawio" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "draw.io", linux: "drawio"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "31.5.2"
  sha256 arm:          "1b02be59feeab21ee13dd966d99d39b952abf7ddb1154d9869c29f5257d25502",
         intel:        "b924085d761e3fcd76987698c309a7442dbdc29eacbf54d8f8a8ec76e86fd866",
         arm64_linux:  "87a6638e55683755a8507537e4d2ff66e143a3f171b39df32ca7977c38b58a4e",
         x86_64_linux: "c0b37ee00307d7112c29b28ea33686103f47af620415d710663497459bdf927f"

  on_macos do
    depends_on macos: :ventura

    app "draw.io.app"
    command_wrapper "drawio",
                    executable: "#{appdir}/draw.io.app/Contents/MacOS/draw.io"

    zap trash: [
      "~/Library/Application Scripts/com.jgraph.drawio.desktop.PreviewExtension",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jgraph.drawio.desktop.sfl*",
      "~/Library/Application Support/draw.io",
      "~/Library/Caches/com.jgraph.drawio.desktop",
      "~/Library/Caches/com.jgraph.drawio.desktop.ShipIt",
      "~/Library/Caches/draw.io-updater",
      "~/Library/Containers/com.jgraph.drawio.desktop.PreviewExtension",
      "~/Library/HTTPStorages/com.jgraph.drawio.desktop",
      "~/Library/Logs/draw.io",
      "~/Library/Preferences/ByHost/com.jgraph.drawio.desktop.ShipIt.*.plist",
      "~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist",
      "~/Library/Preferences/com.jgraph.drawio.desktop.plist",
      "~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState",
      "~/Library/WebKit/com.jgraph.drawio.desktop",
    ]
  end
  on_linux do
    app_image "drawio-#{arch}-#{version}.AppImage", target: "drawio.AppImage"
  end

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/#{os}-#{arch}-#{version}.#{url_end}"
  name "draw.io Desktop"
  desc "Online diagram software"
  homepage "https://www.diagrams.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
