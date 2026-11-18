cask "cursr" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "-mac-#{arch}.dmg", linux: ".AppImage"

  version "1.7.5"
  sha256 arm:          "569307aea627b30d40544b6f2daf338fd5eaa1689383922f16f3235bc66556a0",
         intel:        "8ff181f8a18b5e9ae35b8111a2d11aafb34b17b2deb44fa5ddad9653290d2b5e",
         x86_64_linux: "992271057dc4ffed44e2d1bc4ea08fe3690a9451b60de88ed4f4f66f36dfabda"

  on_macos do
    app "Cursr.app"

    zap trash: [
      "~/Library/Application Support/cursr",
      "~/Library/Preferences/com.bitgapp.cursr.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Cursr.AppImage"

    zap trash: [
      "~/.config/autostart/cursr-autostart.desktop",
      "~/.config/cursr",
    ]
  end

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr#{url_end}"
  name "Cursr"
  desc "Customise mouse movements between multiple displays"
  homepage "https://cursr.app/"
end
