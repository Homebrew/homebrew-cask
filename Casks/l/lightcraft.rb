cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.5.0"
  sha256 arm:          "bd23301d51c9756c970156124bcc47571b530fbf75f37208663ee75c6eac049e",
         intel:        "bd23301d51c9756c970156124bcc47571b530fbf75f37208663ee75c6eac049e",
         arm64_linux:  "0026e4db2907aaa2728439c6454d64884d84ece6871bc15b34e62fd5f8133c97",
         x86_64_linux: "23ce21fef28af91cfe958e99c9c5d58bf6d00ed7bf702b31a21142cd45a47063"

  on_macos do
    app "LightCraft.app"

    zap trash: "~/Library/Application Support/LightCraft"
  end
  on_linux do
    app_image "lightcraft-#{version}-linux-#{arch}.AppImage", target: "LightCraft.AppImage"

    zap trash: "~/.config/lightcraft"
  end

  url "https://github.com/storytold/lightcraft/releases/download/v#{version}/lightcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "LightCraft"
  desc "Photo library manager and raw image developer"
  homepage "https://getartcraft.com/apps/lightcraft"
end
