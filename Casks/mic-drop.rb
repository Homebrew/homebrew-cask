cask "mic-drop" do
  version "1.4.6,1460"
  sha256 "24bac5d600f30eacbbfed2094cc674feea5286a009c32821edafece0fc465fdf"

  url "https://github.com/octopusthink/getmicdrop.com/releases/download/v#{version.csv.first}/Mic.Drop.#{version.csv.first}.zip",
      verified: "github.com/octopusthink/getmicdrop.com/"
  name "Mic Drop"
  desc "Quickly mute your microphone with a global shortcut or menu bar control"
  homepage "https://getmicdrop.com/"

  livecheck do
    url "https://getmicdrop.com/downloads/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Mic Drop.app"

  zap trash: [
    "~/Library/Application Support/com.octopusthink.Mic-Drop",
    "~/Library/Application Support/Mic Drop",
    "~/Library/Caches/com.octopusthink.Mic-Drop",
    "~/Library/Preferences/com.octopusthink.Mic-Drop.plist",
  ]
end
