cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.20.0"
  sha256 arm:          "afaf516fd738128d8e5570664acfb02f2606ff49ba0203b59dfdeabd1b1c0d43",
         intel:        "afaf516fd738128d8e5570664acfb02f2606ff49ba0203b59dfdeabd1b1c0d43",
         arm64_linux:  "639c59db0079621b02b80a6d60962c291b1f4910b5ea27c56dc2eade013d214c",
         x86_64_linux: "55ca6e4d9a21a77d3c2446bd0f56cb525356741a8d4260bcbfedbbb0c748f925"

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
