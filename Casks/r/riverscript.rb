cask "riverscript" do
  version "1.3.1"
  sha256 "780a3c03fa7e1135c7168e6a0603fe2279025b274085cc5e4f87205edf6e28f9"

  url "https://downloads.riverscript.com/releases/v#{version}/riverscript_#{version}_universal.dmg"
  name "RiverScript"
  desc "AI platform for recording and transcribing system audio from any app"
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
