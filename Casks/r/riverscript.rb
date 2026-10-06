cask "riverscript" do
  version "1.2.7"
  sha256 "6d87277ac4d893eca2579b919f2b1fc554594b0e77a65ad794df55f6e247519e"

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
