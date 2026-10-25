cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.13.0"
  sha256 arm:          "14d020b90df9178de290d624e012bdceb353b1595ff5b7991d4896b8f42ea03b",
         intel:        "14d020b90df9178de290d624e012bdceb353b1595ff5b7991d4896b8f42ea03b",
         arm64_linux:  "8adb8671fd3c5f02551d6a54b83c2fa85b2333a45cd2d017d68d5ad782d0c299",
         x86_64_linux: "8d7661b98f6434d5c65e5cd2c7699d4af6a88d104598c48dcb09bfae05f6c62f"

  on_macos do
    app "DesignCraft.app"

    zap trash: "~/Library/Application Support/DesignCraft"
  end
  on_linux do
    app_image "designcraft-#{version}-linux-#{arch}.AppImage", target: "DesignCraft.AppImage"

    zap trash: [
      "~/.config/designcraft",
      "~/.local/share/designcraft",
    ]
  end

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "DesignCraft"
  desc "Page layout and publishing tool"
  homepage "https://getartcraft.com/apps/designcraft"
end
