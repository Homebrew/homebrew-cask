cask "mic-drop" do
  version "1.5.0"
  sha256 "be01a9de5ef716e10d2885def7d2ead92799a68fa62c5f32a257a0ae2580b0bd"

  url "https://github.com/octopusthink/getmicdrop.com/releases/download/v#{version}/Mic.Drop.#{version}.zip",
      verified: "github.com/octopusthink/getmicdrop.com/"
  name "Mic Drop"
  desc "Quickly mute your microphone with a global shortcut or menu bar control"
  homepage "https://getmicdrop.com/"

  deprecate! date: "2024-10-08", because: :moved_to_mas

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
