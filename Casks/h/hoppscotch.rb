cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.9.0-0"
  sha256 arm:          "a4aebe60186464bc25740177e1260c2e3323af83a5f5bed62325ae23ef653a1b",
         intel:        "63187577328dced2b60cbf11031c5bd75a039a7f8a630045edfd0b8b3f64fe8e",
         x86_64_linux: "41763d7cf4dcee58345fec78eada1dcdc583683a53f75809f27fb1ced2678e6f"

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

    app_image "Hoppscotch_linux_x64.AppImage", target: "Hoppscotch.AppImage"

    zap trash: [
      "~/.cache/io.hoppscotch.desktop",
      "~/.config/io.hoppscotch.desktop",
      "~/.local/share/io.hoppscotch.desktop",
    ]
  end

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_#{os}_#{arch}.#{url_end}"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch-selfhost"
end
