cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.14.0"
  sha256 arm:          "9392fb563de06da2eca48791a40f812f721103697362015659b3ff7577e7b081",
         intel:        "9392fb563de06da2eca48791a40f812f721103697362015659b3ff7577e7b081",
         arm64_linux:  "aa342edb6543487290e81a63d61fd3c31fc038875f77e2c786d84419cb45d045",
         x86_64_linux: "c7b9a4b760e4c94b05fde4cd1c266823a736bc3fa507150cff0dc1920edfc28e"

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
