cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.11.1"
  sha256 arm:          "d55c7e1ee56c08a4fafc06fc47a0e9259d12fafc71b2742e2dec607c44554fab",
         intel:        "d55c7e1ee56c08a4fafc06fc47a0e9259d12fafc71b2742e2dec607c44554fab",
         arm64_linux:  "b032e03e5c7996b01d045e3d93e31217a991bf6b312d3440a54e7b03f635b43d",
         x86_64_linux: "5eb34438fddf24271d6309d1f4b86d07bb8d49261433d90b88fd24e42330c625"

  on_macos do
    app "GridCraft.app"

    zap trash: [
      "~/Library/Application Support/GridCraft",
      "~/Library/Preferences/ai.storyteller.gridcraft.plist",
    ]
  end
  on_linux do
    app_image "gridcraft-#{version}-linux-#{arch}.AppImage", target: "GridCraft.AppImage"

    zap trash: "~/.config/gridcraft"
  end

  url "https://github.com/storytold/gridcraft/releases/download/v#{version}/gridcraft-#{version}-#{url_end}"
  name "GridCraft"
  desc "Spreadsheet editor"
  homepage "https://github.com/storytold/gridcraft"
end
