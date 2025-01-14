cask "easyeda" do
  arch arm: "arm64", intel: "x64"

  version "6.5.46"
  sha256 arm:   "cdee0f5aabd57b5ec3a3f6c7b9e7896784709742c6f9bc758b89cc703e94c2df",
         intel: "11272b280295c2eb9c7540d21cb83fcd8495941f386d09a60b0618981acdbfee"

  url "https://image.easyeda.com/files/easyeda-mac-#{arch}-#{version}.zip"
  name "EasyEDA"
  desc "PCB design tool"
  homepage "https://easyeda.com/"

  livecheck do
    url "https://easyeda.com/api/latestClientVersion"
    strategy :json do |json|
      json["result"]
    end
  end

  app "EasyEDA.app"

  zap trash: [
    "~/Library/Application Support/EasyEDA",
    "~/Library/Logs/EasyEDA",
    "~/Library/Preferences/com.easyeda.editor.helper.plist",
    "~/Library/Preferences/com.easyeda.editor.plist",
    "~/Library/Saved Application State/com.easyeda.editor.savedState",
  ]
end
