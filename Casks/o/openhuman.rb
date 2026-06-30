cask "openhuman" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.58.7"
  sha256 arm:          "d95bdd8eb1ef880c486cbce0263db82888c8215bcc14d2fec3ef9690cb16f893",
         x86_64:       "450538c2f13e58211c949c3fd032f665251843d517e589f64a8731d514081f9b",
         x86_64_linux: "f6e0b13d8efd7b27060e756b5b9eadce5c8ca0a070a16937a683010bc8abea0c",
         arm64_linux:  "ecb106524c4da7023b3ef3be8d3ee1fdeb56a7cf8756c9b4525169b59b1797e6"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/tinyhumansai/openhuman/releases/download/v#{version}/OpenHuman_#{version}_#{arch}#{url_end}",
      verified: "github.com/tinyhumansai/openhuman/"
  name "OpenHuman"
  desc "Personal AI assistant with local memory and integrations"
  homepage "https://tinyhumans.ai/openhuman"

  on_macos do
    auto_updates true

    app "OpenHuman.app"

    uninstall quit: "com.openhuman.app"

    zap trash: [
      "~/.openhuman",
      "~/Library/Preferences/com.openhuman.app.plist",
    ]
  end

  on_linux do
    app_image "OpenHuman_#{version}_#{arch}.AppImage", target: "OpenHuman.AppImage"
  end
end
