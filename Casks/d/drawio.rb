cask "drawio" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "draw.io", linux: "drawio"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "32.4.1"
  sha256 arm:          "85e3bd6956b79bc0ff6f36237abd7b5527b1654802ead742c8a78b657e01740c",
         intel:        "a85eaf80f4af8fb991ddc206ff7eb693622f01f1bdf86ef33fb566367d94bf85",
         arm64_linux:  "23ed8423a5aabd64d9742d27affac94cdd2d89ed22eadde7d5562f4fb25be56b",
         x86_64_linux: "c687a9f1ddcaa146b78547452d264c03c2afcf125639cba5deeb65f3e9554c9e"

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
