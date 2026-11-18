cask "drawio" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "draw.io", linux: "drawio"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "32.7.4"
  sha256 arm:          "b0ba01224cdc4817ebf218d73b2a45ff3569f8c9135ad422c5157655062900b3",
         intel:        "ff7de8cf1cfe64e39683d042dfbb1677fd39463a304adfb6c86681dc253d7453",
         arm64_linux:  "da341b6d279507ff7a2e573beba17be44397f00a9fb6b4b74a200ad07e3ee2c6",
         x86_64_linux: "7d78c781d4ec33d86dc48251c3cadc9c18dcea6bc5d581322c0335ccb33b222c"

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
