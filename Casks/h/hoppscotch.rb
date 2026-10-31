cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.10.0-0"
  sha256 arm:          "5c5180ef02365c7bcf22d5b5d6052dc9dd4369304bd7ac7a0d6175eec692c375",
         intel:        "5ef61bb43a783e6a4e55090dc9184efe7e4ea576063696def6864b052f18373d",
         x86_64_linux: "c2199fe6b05aacaf6cc008a8302c60a041645792aa3782dff1f977ccbfd1cd2d"

  on_macos do
    app "Hoppscotch.app"

    uninstall quit: "io.hoppscotch.desktop"

    zap trash: [
      "~/Library/Application Support/io.hoppscotch.desktop",
      "~/Library/Caches/io.hoppscotch.desktop",
      "~/Library/Logs/io.hoppscotch.desktop",
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
