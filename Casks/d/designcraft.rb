cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.1"
  sha256 arm:          "4e5f58cfbeed70e55cce0ec30f78106092f505d20ca7dc721a1caef819408c86",
         intel:        "4e5f58cfbeed70e55cce0ec30f78106092f505d20ca7dc721a1caef819408c86",
         arm64_linux:  "da4d2fc0c49c76ba93c056a32706d9d9f4b8a274ba46728c100bf6f88b5e7980",
         x86_64_linux: "20f6aeaf0122da89613837eb52b82f16f727d2f6db7a506d71166d6115fa651d"

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
