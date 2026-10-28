cask "lightcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.15.0"
  sha256 arm:          "175c1e68187d91cf90033a93015fb4cb450455755b78f41e394a9ea09e77cde9",
         intel:        "175c1e68187d91cf90033a93015fb4cb450455755b78f41e394a9ea09e77cde9",
         arm64_linux:  "17b54138c11b47815580e19ea5128f41a81e33d98b7c97c29a8108b9fc8a2919",
         x86_64_linux: "851f1c1554fda928fe433e9cbe0e139a393231565561c2e5152b720bb059813b"

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
