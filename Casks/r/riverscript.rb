cask "riverscript" do
  version "1.3.2"
  sha256 "72ecddf648f8c4d1963ecd03845ee74332bb460a2476ff0d0ea68e95151988b2"

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
