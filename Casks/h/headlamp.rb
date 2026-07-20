cask "headlamp" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"

  version "0.43.0"
  sha256 arm:          "377fed2953a4594ba9e1aaded9d7dac4736455233a1b87da663c1c728bfc0566",
         intel:        "1d978e4726507472b2065753526f05aa7b430745eb378f05af271ccc6f0dc62c",
         arm64_linux:  "322a9b41a0d005124540a1b5f3dcba55753368c9e6454e93726abbf5d1b618cd",
         x86_64_linux: "a171f425c73b68b7a1137088a7851686ead3b24adb14ce6077b034e1c1cc110c"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/headlamp-k8s/headlamp/releases/download/v#{version}/Headlamp-#{version}-#{os}-#{arch}#{url_end}",
      verified: "github.com/headlamp-k8s/headlamp/"
  name "Headlamp"
  desc "UI for Kubernetes"
  homepage "https://headlamp.dev/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  on_macos do
    depends_on macos: :monterey

    app "Headlamp.app"

    uninstall quit: "com.kinvolk.headlamp"

    zap trash: [
      "~/Library/Application Support/Headlamp",
      "~/Library/Logs/Headlamp",
      "~/Library/Preferences/com.kinvolk.headlamp.plist",
    ]
  end

  on_linux do
    app_image "Headlamp-#{version}-linux-#{arch}.AppImage", target: "Headlamp.AppImage"
  end
end
