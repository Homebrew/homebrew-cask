cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.21.1"
  sha256 arm:          "9964d13556c7e0f03abf6f4ab20bde8a9d6c9db744d4d3cc6c67753862064f00",
         intel:        "9964d13556c7e0f03abf6f4ab20bde8a9d6c9db744d4d3cc6c67753862064f00",
         arm64_linux:  "513bef6d184c2e78330d26490be7f7c495504caaf88fa8b61490192a8fb03e79",
         x86_64_linux: "bb08f639ca036da0d271aca1f1f4c9bd711415c4f7e085bc1bf42d7b1f6e0c03"

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
