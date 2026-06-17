cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.43.0"
  sha256 arm:   "377fed2953a4594ba9e1aaded9d7dac4736455233a1b87da663c1c728bfc0566",
         intel: "1d978e4726507472b2065753526f05aa7b430745eb378f05af271ccc6f0dc62c"

  url "https://github.com/headlamp-k8s/headlamp/releases/download/v#{version.sub(/-\d+/, "")}/Headlamp-#{version}-mac-#{arch}.dmg",
      verified: "github.com/headlamp-k8s/headlamp/"
  name "Headlamp"
  desc "UI for Kubernetes"
  homepage "https://headlamp.dev/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "Headlamp.app"

  uninstall quit: "com.kinvolk.headlamp"

  zap trash: [
    "~/Library/Application Support/Headlamp",
    "~/Library/Logs/Headlamp",
    "~/Library/Preferences/com.kinvolk.headlamp.plist",
  ]
end
