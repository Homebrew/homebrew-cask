cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.9.0-0"
  sha256 arm:          "2decddd20bb5c7fa0a210f0dc69a7e53693ce300f3ed417d8f4df5bd90a1795f",
         intel:        "5df15681a07e726974feab8f9ddc33a3195342b21cfa14f59eff5252ff87b6d2",
         x86_64_linux: "f17952e010502f39e1fe151f6fea094b2b47fcf6e5a9ffd13fa54636f76d564c"

  on_macos do
    app "Hoppscotch.app"

    uninstall quit: "io.hoppscotch.desktop"

    zap trash: [
      "~/Library/Application Support/io.hoppscotch.desktop",
      "~/Library/Caches/io.hoppscotch.desktop",
      "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
      "~/Library/WebKit/io.hoppscotch.desktop",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Hoppscotch_SelfHost_linux_#{arch}.AppImage", target: "Hoppscotch SelfHost.AppImage"

    zap trash: [
      "~/.cache/io.hoppscotch.desktop",
      "~/.config/io.hoppscotch.desktop",
      "~/.local/share/io.hoppscotch.desktop",
    ]
  end

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_SelfHost_#{os}_#{arch}.#{url_end}"
  name "Hoppscotch SelfHost"
  desc "Desktop client for SelfHost version of the Hoppscotch API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch"
end
