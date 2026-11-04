cask "drawio" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "draw.io", linux: "drawio"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "32.6.10"
  sha256 arm:          "83e4027837f89bfba9dafbcc5c0e4befa76e2ac7f4e37f7a7b40c817141a6727",
         intel:        "b2e6be1e323177d40cc2bac4e0d2fcf436ece1f4dc6fe648d164679d4ac9c84b",
         arm64_linux:  "2b3a66339d56a87a346df52b65fc39a342da1b12b5eed80a633c3bb6c031700e",
         x86_64_linux: "94158126a43016b4e6f24bbc2c840ab8b5a51c6bf2796e1b3dadc64390b2d256"

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

    zap trash: [
      "~/.cache/draw.io-updater",
      "~/.config/draw.io",
    ]
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
