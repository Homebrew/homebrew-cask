cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.8.0"
  sha256 arm:          "92a98717dec992cd0349da2397f695219b1ec9a8a251e1c6f30e12c3d4168dcf",
         intel:        "92a98717dec992cd0349da2397f695219b1ec9a8a251e1c6f30e12c3d4168dcf",
         arm64_linux:  "e2f982cd7b2ba1850f756ba2ee8997f611f0ad519b51e6b04434c3c512a1a05a",
         x86_64_linux: "81d54b09e60b448c05517f1dea3422bea5998692a8a1a84060466385b9dfd9c3"

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
