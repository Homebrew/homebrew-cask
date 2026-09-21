cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.8.1-0"
  sha256 arm:          "0548faf630d803aa331ba1d5569e17bcd9bfd58b32b7e002678542286b3d4a00",
         intel:        "f3db532d837147fb7bfa2afeeff6b8b053fe7ea1a5eb2f9e634db1ff89ff2566",
         x86_64_linux: "75550be19ffbcf26cee11a8695d45e040f6a71153b23ce38bdb624dceac33169"

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
