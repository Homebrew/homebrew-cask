cask "riverscript" do
  version "1.4.1"
  sha256 "7f060eb12111e87e6543c17a5d1c98d9f4441b3195397c0ad0fa42a50393ec7c"

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
