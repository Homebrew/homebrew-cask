cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.12.0"
  sha256 arm:          "70cc3dc31452172f04a43dc8f322b3b01688c0b0929a5244bfd87de72d49412f",
         intel:        "70cc3dc31452172f04a43dc8f322b3b01688c0b0929a5244bfd87de72d49412f",
         arm64_linux:  "2df931f8c526a976297731d6e2a9695d3dbcd4d0810eb797945d266a8e7cdd23",
         x86_64_linux: "774a987280c42a7ce18573bb61d6be00dcd5bcffa83042e7649686b00362a58e"

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
