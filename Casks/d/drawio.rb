cask "drawio" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "draw.io", linux: "drawio"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "31.3.1"
  sha256 arm:          "f102bb381509fb3bce4e5bd692f1a329eb2b288dffc54d0f4a01df8f45ec52dc",
         intel:        "15a7d979533f27f39a5fec5d4740c16fa6f233d1e55e0eb0c5a4a2f6a15649c8",
         arm64_linux:  "5f404182a5f72454072a0e4c6c9de76273a8d9589e155d9daeca09721ab7f925",
         x86_64_linux: "407f03edcec02916d02feb38e60d66c76ebe27de8915d646a365e6a22f69a9bb"

  on_macos do
    depends_on macos: :monterey

    app "draw.io.app"
    command_wrapper "drawio",
                    executable: "#{appdir}/draw.io.app/Contents/MacOS/draw.io"

    zap trash: [
      "~/Library/Application Support/draw.io",
      "~/Library/Caches/com.jgraph.drawio.desktop",
      "~/Library/Caches/com.jgraph.drawio.desktop.ShipIt",
      "~/Library/Caches/draw.io-updater",
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

  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/#{os}-#{arch}-#{version}.#{url_end}",
      verified: "github.com/jgraph/drawio-desktop/"
  name "draw.io Desktop"
  desc "Online diagram software"
  homepage "https://www.diagrams.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
