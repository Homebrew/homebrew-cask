cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.16.0"
  sha256 arm:          "ee6dbd4991f6365e242c9eda4d5a388536702c7d90ea8e04687a77ca1d1e742b",
         intel:        "ee6dbd4991f6365e242c9eda4d5a388536702c7d90ea8e04687a77ca1d1e742b",
         arm64_linux:  "4401ebc210aeea81055c02afe529e032af296cfc53fd2e3d7e4499365cc156f7",
         x86_64_linux: "ecccda5dc38c6ca5de192e450f1bfa5393b43bd683868b0e5306ae2dc975c827"

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
