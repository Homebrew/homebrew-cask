cask "riverscript" do
  version "1.2.0"
  sha256 "d06b318c41bd02c9a80e72bdab6904ba54c17880a1bd5fc5a6f37ab87a371390"

  url "https://downloads.riverscript.com/releases/v#{version}/riverscript_#{version}_universal.dmg"
  name "RiverScript"
  desc "Capture and transcribe everything you hear on your computer"
  homepage "https://riverscript.com/"

  livecheck do
    url "https://downloads.riverscript.com/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :ventura

  app "RiverScript client.app"

  zap trash: [
    "~/Library/Caches/com.riverscript.desktop",
    "~/Library/Preferences/com.riverscript.desktop.plist",
    "~/Library/Saved Application State/com.riverscript.desktop.savedState",
    "~/Library/WebKit/com.riverscript.desktop",
  ]
end
