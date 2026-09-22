cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.8.1-0"
  sha256 arm:          "e91c3c57b15a019066a70213d7298cd81024a770289137effb3949a32340b5f8",
         intel:        "578e4337a70da8525368e11b238c946e1a34cf040e8741f2535c6712337364e7",
         x86_64_linux: "46167dff338ef1883188266e2ed7bb798ab1d9331343d1b2f40f164dc53a3bed"

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
