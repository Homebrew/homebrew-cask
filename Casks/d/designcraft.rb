cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.9.0"
  sha256 arm:          "7fe7578040fb1b340b063d513b62cf7e53335274453327b287998221bb52768e",
         intel:        "7fe7578040fb1b340b063d513b62cf7e53335274453327b287998221bb52768e",
         arm64_linux:  "54dd777ae54e2b6d930dc9028465f0bece9a58a904b9e9ce51b8b95407ee52ad",
         x86_64_linux: "e5ab60399b923271235940118918d6f0c460a3082a090b0f6fe4d9d0490da9b5"

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
