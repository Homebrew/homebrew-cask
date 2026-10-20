cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.10.0"
  sha256 arm:          "5239413e77ede3696e7a4a53b63b384e58976c7c503998cadfd5c93d07c576a6",
         intel:        "5239413e77ede3696e7a4a53b63b384e58976c7c503998cadfd5c93d07c576a6",
         arm64_linux:  "a7640a58579575672c1bcc7bf79fb57a1fb28df37d47958ea53756cebc719d22",
         x86_64_linux: "0e2c3dee2a5abe9afc4dcbe1ec0438cc60544ce1d18bf1f5c3e1690e129cd957"

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
